import 'package:about_me/components/my_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/colors.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
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
      padding: EdgeInsets.only(
        top: 32,
        bottom: 32,
        left: width > 1280 ? width / 20 : 16,
        right: width > 1280 ? width / 20 : 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyIcon(
            icon: Icon(
              FontAwesomeIcons.boxArchive,
              size: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Featured Projects",
                    style: TextStyle(
                      color: AppColor.whitePrimary,
                      fontSize: adjustSkillSetsTextAndIconsSize(width),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Icon(
                    FontAwesomeIcons.diagramProject,
                    color: AppColor.greyPrimary,
                    size: adjustSkillSetsTextAndIconsSize(width),
                  ),
                ],
              ),
              Row(
                children: [
                  MyIcon(
                    icon: Icon(
                      Icons.arrow_left,
                      size: adjustSkillSetsTextAndIconsSize(width),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  MyIcon(
                    icon: Icon(
                      Icons.arrow_right,
                      size: adjustSkillSetsTextAndIconsSize(width),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
