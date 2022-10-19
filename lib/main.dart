import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'all_of_the_pages.dart';
import 'package:page_transition/page_transition.dart';
import 'package:lottie/lottie.dart';

void main() {
// 1
  runApp(const ProfED());
}

class ProfED extends StatelessWidget {
// 2
  const ProfED({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        backgroundColor: Colors.green,
        splashIconSize: 450,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.rightToLeft,
        splash: Column(
          children: [
            Image.asset('assets/images/image.png'),
          ],
        ),
        nextScreen: const MainPage());
  }
}
