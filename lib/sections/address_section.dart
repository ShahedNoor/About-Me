import 'package:about_me/utils/my_url_launcher.dart';
import 'package:flutter/material.dart';

import '../components/my_icon.dart';
import '../utils/colors.dart';

class AddressSection extends StatefulWidget {
  const AddressSection({super.key});

  @override
  State<AddressSection> createState() => _AddressSectionState();
}

class _AddressSectionState extends State<AddressSection> {
  // Hover instance
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return Container(
      padding: EdgeInsets.only(
        top: 32,
        bottom: 32,
        left: width > 1280 ? width / 20 : 16,
        right: width > 1280 ? width / 20 : 16,
      ),
      decoration: BoxDecoration(
        color: AppColor.backgroundSecondary.withOpacity(0.2),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 720) {
            // Small screen layout (stacked columns)
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                buildHireMeInfo(),
                const SizedBox(height: 40),
                buildAddressForm(),
              ],
            );
          } else {
            // Large screen layout (side by side)
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(child: buildHireMeInfo()),
                    const SizedBox(width: 50),
                    Expanded(child: buildAddressForm()),
                  ],
                ),
              ],
            );
          }
        },
      ),
    );
  }

  Widget buildHireMeInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Let's create something truly unique for you, in the most convenient way possible!",
          style: TextStyle(
            color: AppColor.whitePrimary,
            fontFamily: 'RobotoMono',
            fontSize: 27,
          ),
          softWrap: true, // Allow text wrapping
          overflow: TextOverflow.visible, // Handle overflow
        ),
        const SizedBox(
          height: 20,
        ),
        MouseRegion(
          onEnter: (context) => setState(() => isHovered = true),
          onExit: (_) => setState(() => isHovered = false),
          child: Container(
            transform: Matrix4.translationValues(0, isHovered ? -5 : 0, 0),
            child: Row(
              children: [
                Text(
                  "Hire Me!",
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
      ],
    );
  }

  Widget buildAddressForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Please feel free to reach out for any address-related information you may need.",
          style: TextStyle(
            color: AppColor.greyPrimary,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Gazipur 1730, Dhaka Division, Bangladesh",
          style: TextStyle(
            color: AppColor.greyPrimary,
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () => MyUrlLauncher(url: "mailto:shahednoor32@gmail.com")
              .launchUrlNow(),
          child: const Text(
            "shahednoor32@gmail.com",
            style: TextStyle(
              color: AppColor.whitePrimary,
              fontSize: 27,
              decoration: TextDecoration.underline,
              decorationColor: AppColor.whitePrimary,
            ),
          ),
        ),
      ],
    );
  }
}
