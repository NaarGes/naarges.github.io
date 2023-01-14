import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/ui/components/app_icon.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(Assets.background1),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DelayedDisplay(
              delay: const Duration(milliseconds: 500),
              fadingDuration: const Duration(milliseconds: 1000),
              child: Text(
                'Narges Sadeghi',
                style: GoogleFonts.stardosStencil().copyWith(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 30),
            DelayedDisplay(
              delay: const Duration(milliseconds: 1500),
              fadingDuration: const Duration(milliseconds: 1000),
              child: Text(
                'Mobile Developer',
                style: GoogleFonts.stardosStencil().copyWith(
                  fontSize: 40,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DelayedDisplay(
                  delay: const Duration(milliseconds: 2500),
                  // fadingDuration: const Duration(milliseconds: 1000),
                  child: AppIcon(
                      iconPath: Assets.github,
                      onTap: () => _launchUrl('https://github.com/NaarGes')),
                ),
                const SizedBox(width: 45),
                DelayedDisplay(
                  delay: const Duration(milliseconds: 3300),
                  // fadingDuration: const Duration(milliseconds: 1000),
                  child: AppIcon(
                      iconPath: Assets.linkedin,
                      onTap: () => _launchUrl(
                          'https://www.linkedin.com/in/nargessadeghi/')),
                ),
                const SizedBox(width: 45),
                DelayedDisplay(
                  delay: const Duration(milliseconds: 4100),
                  // fadingDuration: const Duration(milliseconds: 1000),
                  child: AppIcon(
                      iconPath: Assets.email,
                      onTap: () =>
                          _launchUrl('mailto:narges.sadeghi73@gmail.com')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }
}
