import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/colors.dart';

class MyContactListTile extends StatefulWidget {
  final IconData leading;
  final String title;
  final String subtitle;
  final String url;

  const MyContactListTile(
      {super.key,
      required this.leading,
      required this.title,
      required this.subtitle,
      required this.url});

  @override
  MyContactListTileState createState() =>
      MyContactListTileState(); // Remove the underscore to make the class public
}

class MyContactListTileState extends State<MyContactListTile> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      cursor: SystemMouseCursors.click, // Set the cursor when hovering
      child: AnimatedContainer(
        // Use AnimatedContainer for smooth hover transition
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: _isHovered
              ? AppColor.backgroundSecondary
                  .withOpacity(0.8) // Change color on hover
              : AppColor.backgroundPrimary.withOpacity(0.8),
        ),
        child: ListTile(
          leading: FaIcon(
            widget.leading,
            color: _isHovered
                ? AppColor.whitePrimary
                : AppColor.greyPrimary, // Change icon color on hover
          ),
          title: Text(
            widget.title,
            style: TextStyle(
              color: _isHovered
                  ? AppColor.whitePrimary
                  : AppColor.greyPrimary, // Change text color on hover
            ),
          ),
          subtitle: Text(
            widget.subtitle,
            style: TextStyle(
              color: _isHovered
                  ? AppColor.greyPrimary
                  : AppColor.whitePrimary, // Adjust subtitle color on hover
            ),
          ),
          onTap: () => _launchUrl(widget.url),
        ),
      ),
    );
  }

  void _onHover(bool hover) {
    setState(
      () {
        _isHovered = hover;
      },
    );
  }

  // Function to launch the URL
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }
}
