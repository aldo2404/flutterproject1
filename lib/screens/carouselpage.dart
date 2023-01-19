import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo_project/layout/appbar_bg_color.dart';
import 'package:demo_project/layout/bottomnavibar.dart';
import 'package:demo_project/layout/carousalslide.dart';
import 'package:demo_project/screens/home_page.dart';
import 'package:flutter/material.dart';

class CarouselPage extends StatefulWidget {
  const CarouselPage({super.key});

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("assets/images/walkzero_name_2.png", width: 120),
        flexibleSpace: backgroundColor(),
      ),
      body: ListView(
        children: [
          CarouselSlider(
              items: [
                carousalSlide("assets/images/medicine_img.jpg"),
                carousalSlide("assets/images/medicine_img_2.jpg"),
                carousalSlide("assets/images/medicine_img_3.jpg"),
                carousalSlide("assets/images/medicine_img_4.jpg")
              ],
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/homepage');
          // .push(
          //   MaterialPageRoute(
          //     builder: (BuildContext context) {
          //       return BottomNaviBar();
          //     },
          //   ),
          // );
        },
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              center: const Alignment(0.0, 0.0),
              radius: 0.5,
              colors: [
                Color.fromARGB(255, 149, 210, 243),
                Color(0xFF01579C),
              ],
            ),
          ),
          child: const Image(
            image: AssetImage("assets/images/walkzero_logo3.png"),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 1, 59, 82),
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: const Icon(
                  Icons.person_outline_rounded,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: const Icon(
                  Icons.add_shopping_cart_outlined,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
