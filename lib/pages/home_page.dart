import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplikasifood/theme.dart';
import 'package:aplikasifood/widgets/custom_list.dart';
import 'package:aplikasifood/widgets/food_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 30, left: 24, right: 24),
          child: Row(
            children: [
                Image.asset(
                'assets/user_pic.png',
                width: 45,
                height: 45,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Selamat Datang,',
                    style: GoogleFonts.poppins(
                      color: const Color(0xff272C2F),
                      fontSize: 10,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  Text(
                    'Chintya',
                    style: subTitleTextStyle,
                  ),
                ],
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
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Trending Recipes',
                style: GoogleFonts.poppins(
                  color: const Color(0xff272C2F),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                ),
                child: Row(
                  children: [
                    FoodCard(
                      text: 'Website Developer',
                      imageUrl: 'assets/card_category.png',
                    ),
                    const SizedBox(width: 16),
                    FoodCard(
                      text: 'Mobile Developer',
                      imageUrl: 'assets/card_category2.png',
                    ),
                    const SizedBox(width: 16),
                    FoodCard(
                      text: 'App Designer',
                      imageUrl: 'assets/card_category_three.png',
                    ),
                    const SizedBox(width: 16),
                    FoodCard(
                      text: 'Content Writer',
                      imageUrl: 'assets/card_category_four.png',
                    ),
                    const SizedBox(width: 16),
                    FoodCard(
                      text: 'Video Grapher',
                      imageUrl: 'assets/card_category_five.png',
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Just Posted',
                style: GoogleFonts.poppins(
                  color: const Color(0xff272C2F),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 24.0),
              child: CustomList(
                imageUrl: 'assets/google-icon.png',
                foodTitle: 'Front-End Developer',
                namaPembuat: 'Google',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 24.0),
              child: CustomList(
                imageUrl: 'assets/instagram-icon.png',
                foodTitle: 'UI Designer',
                namaPembuat: 'Instagram',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 24.0),
              child: CustomList(
                imageUrl: 'assets/facebook-icon.png',
                foodTitle: 'Data Scientist',
                namaPembuat: 'Facebook',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 24.0),
              child: CustomList(
                imageUrl: 'assets/google-icon.png',
                foodTitle: 'Data Scientist',
                namaPembuat: 'Facebook',
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(top: 30),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          unselectedItemColor: const Color(0xffB3B5C4),
          selectedItemColor: const Color(0xff272C2F),
          currentIndex: 0,
          elevation: 0,
          iconSize: 24,
          items: [
            const BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage('assets/navbar_one.png'),
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/navbar_two.png'),
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(
                const AssetImage('assets/navbar_three.png'),
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(
                const AssetImage('assets/navbar_four.png'),
              ),
              label: '',
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}
