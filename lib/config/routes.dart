import 'package:get/get.dart';

import '../ui/pages/about_page.dart';
import '../ui/pages/home_page.dart';

class Routes {
  static const String home = '/home';
  static const String about = '/about';

  static var pages = [
    GetPage(name: home, page: () => const HomePage()),
    GetPage(name: about, page: () => const AboutPage()),
  ];
}
