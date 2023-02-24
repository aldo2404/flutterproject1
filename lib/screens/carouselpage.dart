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
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("assets/images/walkzero_name_2.png", width: 120),
        flexibleSpace: backgroundColor(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //constraints: const BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.2), BlendMode.dstATop),
                    image: const AssetImage("assets/images/walkzero_logo3.png"),
                    fit: BoxFit.fill),
              ),
            ),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                CarouselSlider(
                  items: [
                    carousalSlide("assets/images/food_item_1.jpg"),
                    carousalSlide("assets/images/food_item_2.jpg"),
                    carousalSlide("assets/images/food_item_3.jpg"),
                    carousalSlide("assets/images/food_item_4.jpg")
                  ],
                  options: CarouselOptions(
                    height: height,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 600),
                    viewportFraction: 0.5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/homepage');
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
      // bottomNavigationBar: BottomAppBar(
      //   color: Color.fromARGB(255, 1, 59, 82),
      //   shape: CircularNotchedRectangle(),
      //   notchMargin: 5,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       IconButton(
      //           icon: const Icon(
      //             Icons.home,
      //             color: Colors.white,
      //           ),
      //           onPressed: () {}),
      //       IconButton(
      //           icon: const Icon(
      //             Icons.person_outline_rounded,
      //             color: Colors.white,
      //           ),
      //           onPressed: () {}),
      //       IconButton(
      //           icon: const Icon(
      //             Icons.add_shopping_cart_outlined,
      //             color: Colors.white,
      //           ),
      //           onPressed: () {}),
      //       IconButton(
      //           icon: const Icon(
      //             Icons.menu,
      //             color: Colors.white,
      //           ),
      //           onPressed: () {})
      //     ],
      //   ),
      // ),
    );
  }
}
