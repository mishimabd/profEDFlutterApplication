import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myownproject/pages_main_menu/Courses/CoursesDetail.dart';
import 'package:utils_package/utils/utils.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          Container(
              padding: const EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard(
                      'STEP',
                      '\$40.99',
                      'assets/images/courses/STEP_logo.png',
                      false,
                      false,
                      context,
                      "Компьютерная Академия ШАГ - лидер в сфере IT-образования с 1999 года. Мы являемся крупнейшей международной компанией с сотнями тысяч выпускников по всему миру. Мы специализируемся на IT-образовании для взрослых и детей."),
                  _buildCard(
                      'Skill Box',
                      '\$45.99',
                      'assets/images/courses/skillbox.jpg',
                      true,
                      false,
                      context,
                      ''),
                  _buildCard(
                      'Skill Factory',
                      '\$29.99',
                      'assets/images/courses/skillFactory.jpg',
                      false,
                      true,
                      context,
                      ''),
                  _buildCard(
                      'ITVDN',
                      '\$35.99',
                      'assets/images/courses/itvdn.png',
                      false,
                      false,
                      context,
                      ''),
                  _buildCard('EDX', '\$21.99', 'assets/images/courses/edx.png',
                      false, true, context, ''),
                  _buildCard(
                      'BeOnMax',
                      '\$60.99',
                      'assets/images/courses/beonmax.png',
                      false,
                      false,
                      context,
                      '')
                ],
              )),
          const SizedBox(height: 100.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context, String description) {
    return Padding(
        padding:
            const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CookieDetail(
                      assetPath: imgPath,
                      courseprice: price,
                      coursename: name,
                      desc: description)));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            isFavorite
                                ? const Icon(Icons.favorite,
                                    color: Colors.green)
                                : const Icon(Icons.favorite_border,
                                    color: Colors.green)
                          ])),
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 80.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.cover)))),
                  const SizedBox(height: 7.0),
                  Text(price,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                      )),
                  Text(name,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Container(color: const Color(0xFFEBEBEB), height: 1.0),
                  ),
                  // Container(
                  //   height: 10,
                  //   decoration: BoxDecoration(

                  //   color: Colors.green,
                  //     borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  //   ),
                  // ),
                ]))));
  }
}
