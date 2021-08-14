import 'package:flutter/material.dart';
import 'package:flutter_provider/theme.dart';
import 'package:flutter_provider/widgets/custom_list.dart';
import 'package:flutter_provider/widgets/job_card.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 30, left: 24, right: 24),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy',
                    style: textField,
                  ),
                  Text(
                    'Jason Powell',
                    style: mainTextStyle,
                  ),
                ],
              ),
              Spacer(),
              Image.asset(
                'assets/user_pic.png',
                width: 58,
                height: 58,
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Hot Categories',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff272c2f),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 24,
                ),
                child: Row(
                  children: [
                    JobCard(
                      text: 'Website Developer',
                      imageUrl: 'assets/card_category.png',
                    ),
                    SizedBox(width: 16),
                    JobCard(
                      text: 'Mobile Developer',
                      imageUrl: 'assets/card_categories_2.png',
                    ),
                    SizedBox(width: 16),
                    JobCard(
                      text: 'App Designer',
                      imageUrl: 'assets/card_categories_3.png',
                    ),
                    SizedBox(width: 16),
                    JobCard(
                      text: 'Content Writer',
                      imageUrl: 'assets/card_categories_4.png',
                    ),
                    SizedBox(width: 16),
                    JobCard(
                      text: 'Film Maker',
                      imageUrl: 'assets/card_categories_5.png',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Just Posted',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff272c2f),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 26),
              child: Column(
                children: [
                  CustomList(
                    imgUrl: 'assets/google-icon.png',
                    text: 'Front-End Developer',
                    companyName: 'Google',
                  ),
                  CustomList(
                    imgUrl: 'assets/instagram.png',
                    text: 'Content Creator',
                    companyName: 'Google',
                  ),
                  CustomList(
                    imgUrl: 'assets/facebook.png',
                    text: 'Data Scientist',
                    companyName: 'Facebook',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'New Startup',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff272c2f),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 30),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          unselectedItemColor: Color(0xffB3B5C4),
          currentIndex: 0,
          elevation: 0,
          iconSize: 24,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/navbar_one.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/navbar_two.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/navbar_three.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/navbar_four.png',
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [header(), body()],
      ),
    );
  }
}
