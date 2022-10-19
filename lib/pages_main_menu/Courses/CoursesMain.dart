import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myownproject/pages_main_menu/Courses/CoursesPage.dart';

class CourseMain extends StatefulWidget {
  const CourseMain({super.key});

  @override
  _CourseMainState createState() => _CourseMainState();
}

class _CourseMainState extends State<CourseMain>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(left: 20.0),
        children: <Widget>[
          const SizedBox(height: 40.0),
           Text('Courses',
              style: GoogleFonts.poppins(fontSize:42, fontWeight: FontWeight.bold), ),
          const SizedBox(height: 15.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.green,
              isScrollable: true,
              labelPadding: const EdgeInsets.only(right: 45.0),
              unselectedLabelColor: const Color(0xFFCDCDCD),
              tabs: [
                 Tab(
                  child: Text('Developer',
                      style: GoogleFonts.poppins(fontSize:21, fontWeight: FontWeight.bold), ),
                ),
                 Tab(
                  child: Text('UI/UX',
                      style: GoogleFonts.poppins(fontSize:21, fontWeight: FontWeight.bold), ),
                ),
                 Tab(
                  child: Text('English',
                      style: GoogleFonts.poppins(fontSize:21, fontWeight: FontWeight.bold), ),
                ),
                Tab(
                  child: Text('SMM',
                      style: GoogleFonts.poppins(fontSize:21, fontWeight: FontWeight.bold), ),
                ),
              ]),
              SizedBox(
                height: MediaQuery.of(context).size.height - 50.0,
                width: double.infinity,
                child: TabBarView(
                  controller: _tabController,
                  children: const  [
                     Courses(),
                     Courses(),
                     Courses(),
                     Courses(),
                  ]
                )
              )
        ],
      ),
    );
  }
}