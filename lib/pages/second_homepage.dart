import 'package:flutter/material.dart';
import 'package:flutter_provider/theme.dart';
import 'package:flutter_provider/widgets/custom_list.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondHomePage extends StatelessWidget {
  final String? jobTitleHome;
  final String? imageUrl;
  SecondHomePage({this.jobTitleHome, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      child: Container(
                        width: double.infinity,
                        height: 270,
                        child: Image.asset(
                          imageUrl.toString(),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 178, left: 24),
                      child: Text(
                        jobTitleHome.toString(),
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
                Container(
                  padding: EdgeInsets.only(top: 30, left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Big Companies",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Color(0xff272C2F),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
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
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30, left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Big Companies",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Color(0xff272C2F),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
