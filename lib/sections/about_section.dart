import 'dart:async';

import 'package:about_me/components/my_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../utils/colors.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({super.key});

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  // Generated name function
  List<String> names = [
    "Shahed Noor",
    "\$hahed Noor",
    "\$@#3! 6@7",
    "S#ahed N00r",
    "9\$%#5^ @#",
    "Shah@ed Noor",
    "!2@6#9\$ %^",
    "Shahed No\$r",
    "&*7@# 8\$%",
    "Shahed N&or",
    "^%#4& \$@^",
    "\$hahed N%or",
    "#@!2^ 6&%",
    "Sh\$hed Noor",
    "7^%\$ 1@#&",
    "Shahed N#or",
    "8!@5\$ &^#",
    "Shahed No%r",
    "%^@# 9\$6!",
    "Sh#hed Noor",
    "#@^& 3!\$%",
    "Shahed Noo&",
    "\$%^# @6&!",
    "Shahed Noor@",
    "!@8^ 7\$#%",
    "S%ahed Noor",
    "3\$#% 5^@!",
    "\$hahed N%or",
    "#6!7 @^%\$",
    "Sh#hed Noor",
    "4^%\$ #8!@",
    "Shahed N&or",
    "5@#^ &!6\$",
    "Shahed No\$r",
    "&^\$# 2@!%",
    "\$hahed Noor",
    "9!@% \$6^#",
    "Shahed Noor@",
    "7\$^@ !#%8",
    "Shahed No\$r",
    "@5#^ \$6!%",
    "Shahed Noor"
  ];

  Timer? timer;
  int currentIndex = 0;
  bool isStopped = false;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    // Check if loop is already stopped before creating a new timer
    if (!isStopped) {
      timer = Timer.periodic(const Duration(milliseconds: 100), (_) {
        setState(() {
          currentIndex = (currentIndex + 1) % names.length; // Wrap around
        });
        if (currentIndex == names.length - 1) {
          // Stop the timer
          timer?.cancel();
          // Set isStopped to true
          isStopped = true;
          // Restart the loop after 5 seconds pause
          Future.delayed(const Duration(seconds: 5), () {
            setState(() {
              currentIndex = 0; // Reset index (optional)
              isStopped = false;
              startTimer();
            });
          });
        }
      });
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  // Generated name function end

  // Hover instance
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    // Screen sizes
    final width = MediaQuery.sizeOf(context).width;

    return Container(
      padding: EdgeInsets.only(
        top: 32,
        bottom: 32,
        left: width > 1280 ? width / 20 : 16,
        right: width > 1280 ? width / 20 : 16,
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColor.appbarPrimary, AppColor.backgroundPrimary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 718) {
            // Small screen layout (stacked columns)
            return Column(
              children: [
                buildColumn1(context, width),
                const SizedBox(height: 50),
                buildColumn2(width),
              ],
            );
          } else {
            // Large screen layout (side by side columns)
            return Row(
              children: [
                buildColumn1(context, width),
                const Spacer(),
                buildColumn2(width),
                const Spacer(),
              ],
            );
          }
        },
      ),
    );
  }

  Widget buildColumn1(BuildContext context, double width) {
    // Responsive function
    double calculateFontSize(double width) {
      if (width <= 390) {
        return width / 22;
      } else if (width <= 973) {
        return 23;
      } else if (width <= 1009) {
        return 25;
      } else if (width <= 1080) {
        return 30;
      } else {
        return 40;
      }
    }

    double calculateTextSize(double width) {
      // if (width <= 390) {
      //   return 8;
      //} else
      if (width <= 408) {
        return width / 50;
      } else if (width <= 784) {
        return 10;
      } else if (width <= 820) {
        return 11;
      } else if (width <= 973) {
        return 12;
      } else if (width <= 1009) {
        return 13;
      } else if (width <= 1080) {
        return 14;
      } else if (width <= 1200) {
        return 15;
      } else {
        return 16;
      }
    }

    // Responsive function end

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: AppColor.deepPurplePrimary,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              "FullStack App Developer : Shahed Noor",
              style: TextStyle(
                color: AppColor.whitePrimary,
                fontSize: width <= 360
                    ? 12
                    : width <= 410
                        ? 14
                        : 16,
              ),
              softWrap: true,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const Text(
          "Hello World(</>),",
          style: TextStyle(
            color: AppColor.whitePrimary,
            fontSize: 27,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        SizedBox(
          width: width < 750 ? width : width / 2,
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "This is ",
                    style: TextStyle(
                      color: AppColor.greyPrimary,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    names[currentIndex],
                    style: const TextStyle(
                      color: AppColor.deepPurplePrimary,
                      fontSize: 18,
                      fontFamily: 'HackBot',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Text(
                    ".",
                    style: TextStyle(
                      color: AppColor.greyPrimary,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const Text(
                "Designer and Expert App Developer. I'm dedicated to creating better and more innovative apps in my unique style. Welcome to my fascinating world.",
                style: TextStyle(
                  color: AppColor.greyPrimary,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        MouseRegion(
          onEnter: (context) => setState(() => isHovered = true),
          onExit: (_) => setState(() => isHovered = false),
          child: Container(
            transform: Matrix4.translationValues(0, isHovered ? -5 : 0, 0),
            child: Row(
              children: [
                Text(
                  "Let's Chat!",
                  style: TextStyle(
                    color: isHovered
                        ? AppColor.deepPurplePrimary
                        : AppColor.whitePrimary,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const MyIcon(
                  icon: Icon(
                    Icons.chat,
                    size: 16,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        Animate(
          effects: const [FadeEffect(), SlideEffect()],
          child: Container(
            width: width < 750 ? width : width / 2,
            padding: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              color: AppColor.whitePrimary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "02+",
                  style: TextStyle(
                    color: AppColor.whitePrimary,
                    fontSize: calculateFontSize(width),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Years of\nExperience.",
                  style: TextStyle(
                    color: AppColor.greyPrimary,
                    fontSize: calculateTextSize(width),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  height: 45,
                  width: 1,
                  decoration: BoxDecoration(
                    color: AppColor.whitePrimary.withOpacity(0.5),
                  ),
                ),
                Text(
                  "30+",
                  style: TextStyle(
                    color: AppColor.whitePrimary,
                    fontSize: calculateFontSize(width),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Projects Completed\nOn 15 countries",
                  style: TextStyle(
                    color: AppColor.greyPrimary,
                    fontSize: calculateTextSize(width),
                  ),
                  softWrap: true,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildColumn2(double width) {
    double calculateImageSize(double width) {
      if (width < 750) {
        return width / 1.5;
      } else if (width <= 820) {
        return width / 3;
      } else if (width <= 973) {
        return width / 3;
      } else if (width <= 1009) {
        return width / 3;
      } else if (width <= 1080) {
        return width / 3;
      } else if (width <= 1200) {
        return width / 3;
      } else {
        return width / 3;
      }
    }

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: AppColor.appbarPrimary,
            image: const DecorationImage(
              image: AssetImage(
                'assets/images/profile_image/profile_image.png',
              ),
            ),
          ),
          width: calculateImageSize(width),
          height: calculateImageSize(width),
        ),
      ],
    );
  }
}
