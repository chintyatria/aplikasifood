import 'package:flutter/material.dart';

import 'package:aplikasifood/theme.dart';

class CustomList extends StatelessWidget {
  final String foodTitle;
  final String imageUrl;
  final String deskripsi;

  const CustomList({Key? key,  required this.foodTitle,  required this.imageUrl,  required this.deskripsi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 90,
            height: 90,
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  foodTitle,
                  style: foodTextStyle,
                ),
                Text(
                  deskripsi,
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
