import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/my_icon.dart';
import '../utils/colors.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

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
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColor.appbarPrimary, AppColor.backgroundPrimary],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyIcon(
            icon: Icon(
              FontAwesomeIcons.message,
              size: 16,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        "Have ideas or questions in your mind?",
                        style: TextStyle(
                            color: AppColor.whitePrimary, fontSize: 27),
                        softWrap: true, // This ensures text wrapping
                        overflow: TextOverflow.visible, // Handles overflow
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      FontAwesomeIcons.solidLightbulb,
                      color: AppColor.greyPrimary,
                      size: 27,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
