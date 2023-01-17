import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/ui/pages/home_page.dart';
import 'package:portfolio/utils/strings.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: Strings.appTitle,
      debugShowCheckedModeBanner: false,
      // getPages: Routes.pages,
      home: HomePage(),
    );
  }
}
