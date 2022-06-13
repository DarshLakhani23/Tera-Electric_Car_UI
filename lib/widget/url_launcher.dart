import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrl(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  }
  if (await canLaunch(url)) {
    await launch(url, forceSafariVC: false);
  } else {
    throw "Couldn't launch URL";
  }
}
