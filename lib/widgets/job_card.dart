import 'package:flutter/material.dart';
import 'package:flutter_provider/pages/second_homepage.dart';
import 'package:flutter_provider/theme.dart';

class JobCard extends StatelessWidget {
  final String? text;
  final String? imageUrl;

  JobCard({this.imageUrl, this.text});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SecondHomePage()),
        );
      },
      child: Container(
        width: 150,
        height: 200,
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16, right: 10),
            child: Text(
              text.toString(),
              style: subtitlePhoto,
            ),
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              imageUrl.toString(),
            ),
          ),
        ),
      ),
    );
  }
}
