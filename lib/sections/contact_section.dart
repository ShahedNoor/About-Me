import 'package:about_me/components/my_contact_list_tile.dart';
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
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 720) {
            // Small screen layout (stacked columns)
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildIntroRow(), // Revert the original intro row here
                const SizedBox(height: 40),
                buildContactInfo(),
                const SizedBox(height: 40),
                buildContactForm(),
              ],
            );
          } else {
            // Large screen layout (side by side)
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildIntroRow(), // Revert the original intro row here
                const SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(child: buildContactInfo()),
                    const SizedBox(width: 50),
                    Expanded(child: buildContactForm()),
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
  Widget buildIntroRow() {
    return const Column(
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
                        color: AppColor.whitePrimary,
                        fontSize: 27,
                      ),
                      softWrap: true, // Allow text wrapping
                      overflow: TextOverflow.visible, // Handle overflow
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
      ],
    );
  }

  Widget buildContactInfo() {
    return Container(
      padding: const EdgeInsets.all(25.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: AppColor.backgroundPrimary,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        "Contact info",
                        style: TextStyle(
                          color: AppColor.whitePrimary,
                          fontSize: 27,
                        ),
                        softWrap: true, // Allow text wrapping
                        overflow: TextOverflow.visible, // Handle overflow
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      FontAwesomeIcons.addressBook,
                      color: AppColor.greyPrimary,
                      size: 27,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Feel free to reach out if you’d like to discuss a custom proposal. Thank you for visiting, and I hope you have a wonderful day!",
            style: TextStyle(
              color: AppColor.greyPrimary,
              fontFamily: 'RobotoMono',
              fontSize: 16,
            ),
            softWrap: true, // Allow text wrapping
            overflow: TextOverflow.visible, // Handle overflow
          ),
          SizedBox(
            height: 16,
          ),
          MyContactListTile(
            leading: FontAwesomeIcons.phone,
            title: "Call me now",
            subtitle: "+(880)1648405873",
            url: "tel:+8801648405873",
          ),
          SizedBox(
            height: 10,
          ),
          MyContactListTile(
            leading: FontAwesomeIcons.envelopesBulk,
            title: "Send direct mail",
            subtitle: "shahednoor32@gmail.com",
            url: "mailto:shahednoor32@gmail.com",
          ),
          SizedBox(
            height: 10,
          ),
          MyContactListTile(
            leading: FontAwesomeIcons.whatsapp,
            title: "Whatsapp",
            subtitle: "Send messages to WhatsApp",
            url: "https://wa.me/+8801648405873",
          ),
        ],
      ),
    );
  }

  Widget buildContactForm() {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Just Say 👋 Hi.",
            style: TextStyle(
              color: AppColor.whitePrimary,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Looking forward to hearing from you and wishing you a wonderful day ahead!",
            style: TextStyle(
              color: AppColor.greyPrimary,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 20),
          Form(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Full Name",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Email Address",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Subject",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  maxLines: 4,
                  decoration: const InputDecoration(
                    hintText: "Write a message",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 20),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Submit"),
                      SizedBox(width: 10),
                      Icon(FontAwesomeIcons.solidPaperPlane),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
