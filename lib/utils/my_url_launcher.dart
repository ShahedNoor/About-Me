import 'package:url_launcher/url_launcher.dart';

class MyUrlLauncher {
  final String url;

  MyUrlLauncher({required this.url});

  // Function to launch the URL
  Future<void> launchUrlNow() async {
    final Uri uri = Uri.parse(url);
    if (!await canLaunchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
    await launchUrl(
      uri,
      mode: LaunchMode.externalApplication, // Opens URL in external browser
    );
  }
}
