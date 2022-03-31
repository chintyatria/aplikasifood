import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodCard extends StatelessWidget {
  final String text;
  final String imageUrl;

  FoodCard({ required this.imageUrl,  required this.text});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 200,
        width: 150,
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 15),
            child: Text(
              text,
              style: GoogleFonts.poppins(
                  color: Color(0xFFFFFFFF),
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
