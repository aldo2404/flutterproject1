import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 3, 105, 146),
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(0.2),
          child: Image.asset(
            "assets/images/walkzero_name_2.png",
            width: 180,
          ),
        ),
        title: const Text(
          'NEWS READING',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'News Scroll !',
          style: TextStyle(fontSize: 20),
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              child: Text(
                'Genres',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 40,
                ),
              ),
            ),
            ListTile(
              title: Text('Politics'),
              leading: Icon(Icons.group),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const ListTile(
              title: Text('Cinema'),
              leading: Icon(Icons.movie_creation),
            ),
            const ListTile(
              title: Text('Games'),
              leading: Icon(Icons.gamepad),
            ),
          ],
        ),
      ),
    );
  }
}
