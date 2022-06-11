import 'package:carapp/screens/about_screen.dart';
import 'package:carapp/screens/home%20screen/screen/home_screen.dart';
import 'package:carapp/screens/maintenance_screen.dart';
import 'package:carapp/screens/profile_screen.dart';
import 'package:carapp/screens/range_assistant_screen.dart';
import 'package:carapp/screens/splashscreen.dart';
import 'package:carapp/screens/your_miracle_screen.dart';
import 'package:get/get.dart';

class Routes {
  static const splashscreen = '/splashscreen';
  static const homepage = '/home';
  static const rangeAssistant = '/rangeassistant';
  static const appDrawer = '/appdrawer';
  static const yourMiracle = '/YourMiracle';
  static const maintenancePage = '/maintenancePage';
  static const aboutPage = '/about';
  static const profile = '/profile';

  static final routes = [
    GetPage(name: splashscreen, page: () => const Splashscreen()),
    GetPage(name: homepage, page: () => const HomePage()),
    GetPage(name: rangeAssistant, page: () => const RangeAssistant()),
    GetPage(name: yourMiracle, page: () => const YourMiracle()),
    GetPage(name: maintenancePage, page: () => const MaintenancePage()),
    GetPage(name: aboutPage, page: () => const AboutScreen()),
    GetPage(name: profile, page: () => Profile()),
  ];
}
