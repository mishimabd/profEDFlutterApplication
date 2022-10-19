import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CookieDetail extends StatelessWidget {
  final assetPath, courseprice, coursename, desc;

  const CookieDetail(
      {super.key,
      this.assetPath,
      this.courseprice,
      this.coursename,
      this.desc});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Pickup'),
      ),
      body: ListView(children: [
        const SizedBox(height: 15.0),
        Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
                height: 250.0, width: 200.0, fit: BoxFit.contain)),
        const SizedBox(height: 20.0),
      
        Center(
          child: Text(coursename,
              style:
                GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),),
        ),
        const SizedBox(height: 20.0),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 50.0,
            child: Text(desc,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 16.0,
                    color: Color(0xFFB4B8B9))),
          ),
        ),
        const SizedBox(height: 20.0),
        Center(
            child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.green),
                child:  Center(
                    child: Text(courseprice,
              style:
                GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ))))
      ]),
    );
  }
}
