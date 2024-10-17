import 'package:about_me/utils/my_url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/my_icon.dart';
import '../utils/colors.dart';

class FooterSection extends StatefulWidget {
  const FooterSection({super.key});

  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
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
                buildDivider(),
                const SizedBox(height: 40),
                buildCopyrightSection(),
                const SizedBox(height: 40),
                buildSocialSection(),
              ],
            );
          } else {
            // Large screen layout (side by side)
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildDivider(),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(child: buildCopyrightSection()),
                    const SizedBox(width: 50),
                    Expanded(child: buildSocialSection()),
                  ],
                ),
              ],
            );
          }
        },
      ),
    );
  }

  // Keep the intro row at the top unchanged as per the original code
  Widget buildDivider() {
    return const Divider(
      color: AppColor.backgroundSecondary,
      height: 5,
    );
  }

  Widget buildCopyrightSection() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          FontAwesomeIcons.copyright,
          color: AppColor.greyPrimary,
        ),
        SizedBox(
          width: 10,
        ),
        // Text(
        //   "2022 - All right reserved",
        //   style: TextStyle(
        //     color: AppColor.greyPrimary,
        //   ),
        // ),
        Flexible(
          child: Text(
            "2022 - All right reserved",
            style: TextStyle(
              color: AppColor.greyPrimary,
            ),
            softWrap: true, // Allow text wrapping
            overflow: TextOverflow.visible, // Handle overflow
          ),
        ),
      ],
    );
  }

  Widget buildSocialSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          FontAwesomeIcons.facebook,
          color: AppColor.greyPrimary,
        ),
        SizedBox(
          width: 20,
        ),
        FaIcon(
          FontAwesomeIcons.instagram,
          color: AppColor.greyPrimary,
        ),
        SizedBox(
          width: 20,
        ),
        FaIcon(
          FontAwesomeIcons.github,
          color: AppColor.greyPrimary,
        ),
        SizedBox(
          width: 20,
        ),
        FaIcon(
          FontAwesomeIcons.envelopesBulk,
          color: AppColor.greyPrimary,
        ),
        SizedBox(
          width: 20,
        ),
        MyIcon(
          icon: Icon(FontAwesomeIcons.arrowUp),
        ),
      ],
    );
  }
}
