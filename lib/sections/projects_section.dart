import 'package:about_me/components/my_icon.dart';
import 'package:carousel_slider/carousel_slider.dart';
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

  Size adjustButtonSize(double width) {
    return Size(
      width >= 1200
          ? 150
          : width > 999
              ? width / 90
              : width > 900
                  ? width / 80
                  : width > 700
                      ? width / 70
                      : width > 600
                          ? width / 60
                          : width / 50,
      width >= 1200
          ? 50
          : width > 999
              ? width / 22
              : width > 900
                  ? width / 21
                  : width > 700
                      ? width / 19
                      : width > 600
                          ? width / 17
                          : width / 15,
    );
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
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: CarouselSlider.builder(
              options: CarouselOptions(
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              ),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Stack(
                  children: [
                    // The Image
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Image.asset(
                        "assets/images/projects_image/social_wall.png",
                        fit: BoxFit
                            .cover, // Ensures the image covers the container
                      ),
                    ),

                    // The new button above the row
                    Positioned(
                      bottom: width < 700
                          ? width * 0.17
                          : width < 900
                              ? width * 0.16
                              : width < 1000
                                  ? width * 0.15
                                  : width * 0.14,
                      // Position above the existing row
                      right: MediaQuery.sizeOf(context).width *
                          0.02, // Responsive position
                      child: Center(
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.download,
                            color: AppColor.whitePrimary,
                            size: width / 50,
                          ),
                          label: Text(
                            "Download Release",
                            style: TextStyle(
                              color: AppColor.whitePrimary,
                              fontSize: width / 50,
                            ),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: AppColor.backgroundSecondary,
                            minimumSize: adjustButtonSize(width),
                          ),
                        ),
                      ),
                    ),

                    // The Button overlay with two buttons in a Row
                    Positioned(
                      bottom: MediaQuery.sizeOf(context).width *
                          0.10, // Responsive position
                      right: MediaQuery.sizeOf(context).width *
                          0.02, // Responsive position
                      child: Row(
                        children: [
                          // First button
                          Center(
                            child: TextButton.icon(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.lightbulb,
                                color: AppColor.whitePrimary,
                                size: width / 50,
                              ),
                              label: Text(
                                "Live",
                                style: TextStyle(
                                  color: AppColor.whitePrimary,
                                  fontSize: width / 50,
                                ),
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: AppColor.backgroundSecondary,
                                minimumSize: adjustButtonSize(width),
                              ),
                            ),
                          ),
                          const SizedBox(
                              width: 10), // Space between the buttons

                          // Second button
                          Center(
                            child: TextButton.icon(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.github,
                                color: AppColor.whitePrimary,
                                size: width / 50,
                              ),
                              label: Text(
                                "Code",
                                style: TextStyle(
                                  color: AppColor.whitePrimary,
                                  fontSize: width / 50,
                                ),
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: AppColor.backgroundSecondary,
                                minimumSize: adjustButtonSize(width),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
