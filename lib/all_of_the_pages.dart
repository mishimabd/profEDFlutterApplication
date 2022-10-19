import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myownproject/pages_main_menu/guidance.dart';
import 'package:myownproject/pages_main_menu/home.dart';
import 'package:myownproject/pages_main_menu/settings.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:myownproject/pages_main_menu/Courses/CoursesMain.dart';

// 1
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // 7

  final controller = PageController(initialPage: 0);

  int _selectedIndex = 0;
// 8

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
        scrollDirection: Axis.horizontal,
        controller: controller,
        children:  [
          const Home(),
          Proforient(),
          const CourseMain(),
          const SettingsPage(),
        ],
      ),
// 4
      bottomNavigationBar: SalomonBottomBar(
// 5
        selectedItemColor: Colors.green,
        currentIndex: _selectedIndex,
        onTap: (value) {
          _selectedIndex = value;
          controller.jumpToPage(value);
        },
// 6
        items: <SalomonBottomBarItem>[
          SalomonBottomBarItem(
            title: Text(
              'Home',
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
            ),
            icon: const Icon(Icons.home),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.menu),
            title: Text(
              'Catalogue',
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
            ),
          ),
          SalomonBottomBarItem(
              icon: const Icon(Icons.school_rounded),
              title: Text(
                'Courses',
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              )),
          SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: Text(
                'Login',
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
