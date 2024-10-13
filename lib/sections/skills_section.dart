import 'package:about_me/components/my_icon.dart';
import 'package:about_me/utils/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SkillsSection extends StatefulWidget {
  const SkillsSection({super.key});

  @override
  State<SkillsSection> createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection> {
  void _launchURL() async {
    final Uri url = Uri.parse('https://www.fiverr.com/itsnoor30');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  List skillList = [
    {
      "skillName": "Figma",
      "image": "assets/icons/figma.svg",
      "skillLevel": "70%"
    },
    {
      "skillName": "Adobe XD",
      "image": "assets/icons/adobe-xd.svg",
      "skillLevel": "80%"
    },
    {
      "skillName": "Dart",
      "image": "assets/icons/dart.svg",
      "skillLevel": "90%"
    },
    {
      "skillName": "Flutter",
      "image": "assets/icons/flutter.svg",
      "skillLevel": "90%"
    },
    {
      "skillName": "Firebase",
      "image": "assets/icons/firebase.svg",
      "skillLevel": "80%"
    },
    {
      "skillName": "Node JS",
      "image": "assets/icons/node-js.svg",
      "skillLevel": "85%"
    },
    {
      "skillName": "HTML5",
      "image": "assets/icons/html-5.svg",
      "skillLevel": "85%"
    },
    {
      "skillName": "Tailwind CSS",
      "image": "assets/icons/tailwind-css.svg",
      "skillLevel": "85%"
    },
    {
      "skillName": "Javascript",
      "image": "assets/icons/js.svg",
      "skillLevel": "90%"
    },
  ];

  double adjustSkillSetsTextAndIconsSize(double width) {
    if (width <= 298) {
      return 14;
    } else if (width <= 322) {
      return 16;
    } else if (width <= 345) {
      return 18;
    } else if (width <= 370) {
      return 20;
    } else if (width <= 410) {
      return 22;
    } else if (width <= 405) {
      return 24;
    } else {
      return 27;
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColor.backgroundPrimary, AppColor.appbarPrimary],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      padding: EdgeInsets.only(
          top: 32,
          bottom: 32,
          left: width > 1280 ? width / 20 : 16,
          right: width > 1280 ? width / 20 : 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyIcon(
            icon: Icon(
              FontAwesomeIcons.solidNewspaper,
              size: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "know about my skills",
            style: TextStyle(
              color: AppColor.greyPrimary,
              fontSize: 16,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "My Current SkillSets",
                style: TextStyle(
                  color: AppColor.whitePrimary,
                  fontSize: adjustSkillSetsTextAndIconsSize(width),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Icon(
                FontAwesomeIcons.penNib,
                color: AppColor.greyPrimary,
                size: adjustSkillSetsTextAndIconsSize(width),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          RichText(
            text: TextSpan(
              text:
                  "I've been a full-time Fullstack app developer and freelancer for over two years. I'm constantly honing my skills and expanding my knowledge, all while chasing my dream of becoming a top-tier developer. ",
              style: const TextStyle(
                color: AppColor.greyPrimary,
                fontFamily: 'RobotoMono',
                fontSize: 16,
              ),
              // default style for non-link text
              children: [
                TextSpan(
                  text: 'Visit Fiverr!',
                  style: const TextStyle(
                    color: AppColor.lightPurplePrimary,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = _launchURL,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Wrap(
              spacing: 20.0, // space between items
              runSpacing: 20.0, // space between lines of items
              children: skillList.map((skill) {
                return Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(24.0),
                      decoration: BoxDecoration(
                          color: AppColor.backgroundPrimary,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            skill['image'],
                            height: 100,
                            width: 100,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            skill['skillLevel'],
                            style: const TextStyle(
                              color: AppColor.whitePrimary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      skill['skillName'],
                      style: const TextStyle(
                        color: AppColor.greyPrimary,
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
