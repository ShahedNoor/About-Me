import 'package:about_me/sections/about_section.dart';
import 'package:about_me/sections/contact_section.dart';
import 'package:about_me/sections/projects_section.dart';
import 'package:about_me/sections/skills_section.dart';
import 'package:about_me/utils/colors.dart';
import 'package:flutter/material.dart';

import '../components/app_drawer.dart';
import '../components/my_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundPrimary,
      key: _scaffoldKey,
      endDrawer: const AppDrawer(),
      appBar: MyAppBar(
        scaffoldKey: _scaffoldKey,
      ),
      body: ListView(
        children: const [
          // About section
          AboutSection(),
          // Skills section
          SkillsSection(),
          // Projects section
          ProjectsSection(),
          // Contact section
          ContactSection(),
        ],
      ),
    );
  }
}
