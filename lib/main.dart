import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/config/routes.dart';
import 'package:portfolio/ui/pages/home_page.dart';
import 'package:portfolio/utils/strings.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Strings.appTitle,
      debugShowCheckedModeBanner: false,
      // getPages: Routes.pages,
      home: const HomePage(),
    );
  }
}
