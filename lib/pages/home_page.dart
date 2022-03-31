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
                'assets/user.png',
                width: 45,
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selamat Datang,',
                      style: GoogleFonts.poppins(
                          color: const Color(0xff272C2F),
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Chintya',
                      style: subTitleTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, bottom: 10, top: 10),
            child: Text(
                  'Trending Recipes',
                style: GoogleFonts.poppins(
                  color: const Color(0xff272C2F),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
                ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:  const [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/es_dawet.png'),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  CircleAvatar(
                    radius: 45,
                      backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/es_teler.png'),
                  ),
                  SizedBox( 
                    width: 2,
                  ),
                  CircleAvatar(
                    radius: 45,
                      backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/es_degan.png'),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  CircleAvatar(
                    radius: 45,
                      backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/mie.png'),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  CircleAvatar(
                    radius: 45,
                      backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/roti.png'),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  CircleAvatar(
                    radius: 45,
                      backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/roti2.png'),
                  
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              'Resep Favorit',
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
                    text: 'Dimsum',
                    imageUrl: 'assets/makanan.png',
                  ),
                  const SizedBox(width: 16),
                  FoodCard(
                    text: 'Keripik Pisang',
                    imageUrl: 'assets/makanan_dua.png',
                  ),
                  const SizedBox(width: 16),
                  FoodCard(
                    text: 'Bola-Bola Kentang Keju',
                    imageUrl: 'assets/makanan_tiga.png',
                  ),
                  const SizedBox(width: 16),
                  FoodCard(
                    text: 'Bibimbap Halal',
                    imageUrl: 'assets/makanan_empat.png',
                  ),
                  const SizedBox(width: 16),
                  FoodCard(
                    text: 'Gado-Gado',
                    imageUrl: 'assets/makanan_lima.png',
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
              'Kesukaan Artis',
              style: GoogleFonts.poppins(
                color: const Color(0xff272C2F),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16, left: 24.0),
            child: CustomList(
              imageUrl: 'assets/review-artis.png',
              foodTitle: 'Dimsum ala Mak Beti',
              deskripsi: 'Dengan rasa elegan dan Manis',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16, left: 24.0),
            child: CustomList(
              imageUrl: 'assets/review-artis2.png',
              foodTitle: 'Gado Gado kesukaan mama rafathar',
              deskripsi: 'wuawww',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16, left: 24.0),
            child: CustomList(
              imageUrl: 'assets/review-artis3.png',
              foodTitle: 'Mie gacoan kesukaan semua orang',
              deskripsi: 'sangat enak dan elegan',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16, left: 24.0),
            child: CustomList(
              imageUrl: 'assets/review-artis4.png',
              foodTitle: 'Bola keju yang diatas',
              deskripsi: 'Ambil dari google',
            ),
          ),
        ],
      );
    }

    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(top: 30),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          unselectedItemColor: const Color(0xffB3B5C4),
          selectedItemColor: const Color(0xff272C2F),
          currentIndex: 0,
          elevation: 0,
          iconSize: 24,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book),
              label: 'Home'
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sticky_note_2),
              label: 'Tulis Resep'
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.outdoor_grill),
              label: 'Masak'
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifikasi'
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Akun'
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
