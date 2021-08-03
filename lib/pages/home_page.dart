import 'package:flutter/material.dart';
import 'package:flutter_provider/theme.dart';
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
        child: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hot Categories',
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Color(0xff272C2F),
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 16),
              JobCard(
                  // text: 'Website Developer',
                  // imageUrl: 'assets/card_category.png',
                  ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [header(), body()],
      ),
    );
  }
}
