import 'package:about_me/components/my_icon.dart';
import 'package:about_me/data/projects_data.dart';
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
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          ProjectsData().projectsData[index]["projectImage"],
                          fit: BoxFit
                              .cover, // Ensures the image covers the container
                        ),
                      ),
                    ),

                    Positioned(
                      bottom: MediaQuery.sizeOf(context).width *
                          0.12, // Responsive position
                      right: MediaQuery.sizeOf(context).width *
                          0.04, // Responsive position
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
