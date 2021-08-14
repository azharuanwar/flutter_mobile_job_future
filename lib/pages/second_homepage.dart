import 'package:flutter/material.dart';
import 'package:flutter_provider/theme.dart';
import 'package:flutter_provider/widgets/custom_list.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondHomePage extends StatelessWidget {
  // const SecondHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset('assets/bg_secondHomePage.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 178, left: 24),
                  child: Text(
                    'Website Developer',
                    style: titleSecondHomePage,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 216, left: 23),
                  child: Text(
                    "12,309 available",
                    style: subtitleSecondHomePage,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 24),
              child: Text(
                "Big Companies",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Color(0xff272C2F),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomList(
                    text: "Front-End Developer",
                    imgUrl: "assets/google-icon.png",
                    companyName: "Google",
                  ),
                  CustomList(
                    text: "UI Designer",
                    imgUrl: "assets/instagram.png",
                    companyName: "Instagram",
                  ),
                  CustomList(
                    text: "Data Scientist",
                    imgUrl: "assets/facebook.png",
                    companyName: "Facebook",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 31, left: 24),
              child: Text(
                "New Startups",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Color(0xff272C2F),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 16),
              child: Column(
                children: [
                  CustomList(
                    text: "Front-End Developer",
                    imgUrl: "assets/google-icon.png",
                    companyName: "Google",
                  ),
                  CustomList(
                    text: "UI Designer",
                    imgUrl: "assets/instagram.png",
                    companyName: "Instagram",
                  ),
                  CustomList(
                    text: "Data Scientist",
                    imgUrl: "assets/facebook.png",
                    companyName: "Facebook",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
