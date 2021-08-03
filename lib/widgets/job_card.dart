import 'package:flutter/material.dart';
import 'package:flutter_provider/theme.dart';

class JobCard extends StatelessWidget {
  // final String text;
  // final String imageUrl;

  // JobCard({this.imageUrl, this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 16, right: 10),
          // child: Text(
          //   text,
          //   style: subtitlePhoto,
          // ),
        ),
      ),
      // decoration: BoxDecoration(image: DecorationImage(image: imageUrl)),
    );
  }
}
