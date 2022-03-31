import 'package:flutter/material.dart';

import 'package:aplikasifood/theme.dart';

class CustomList extends StatelessWidget {
  final String foodTitle;
  final String imageUrl;
  final String namaPembuat;

  CustomList({ required this.foodTitle,  required this.imageUrl,  required this.namaPembuat});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 45,
            height: 45,
          ),
          SizedBox(width: 27),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  foodTitle,
                  style: foodTextStyle,
                ),
                Text(
                  namaPembuat,
                  style: namaTextStyle,
                ),
                SizedBox(height: 18),
                Divider(
                  color: Color(0xffECEDF1),
                  thickness: 1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
