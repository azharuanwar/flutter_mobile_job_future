import 'package:flutter/material.dart';
import 'package:flutter_provider/theme.dart';

class CustomList extends StatelessWidget {
  final String? text;
  final String? imgUrl;
  final String? companyName;

  CustomList({this.text, this.imgUrl, this.companyName});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imgUrl.toString(),
          width: 44,
          height: 45,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text.toString(),
                style: jobTextStyle,
              ),
              Text(
                companyName.toString(),
                style: subJobTextStyle,
              ),
              SizedBox(
                height: 18,
              ),
              Divider(
                color: Color(0xffB3B5C4),
                thickness: 1,
              )
            ],
          ),
        ),
      ],
    );
  }
}
