import 'package:demo_project/layout/appbar_bg_color.dart';
import 'package:demo_project/layout/backgroundimage.dart';
import 'package:demo_project/layout/bottomnavibar.dart';
import 'package:demo_project/screens/learn_flutter.dart';
import 'package:demo_project/screens/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    LearnFlutter(),
    LoginPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          height: 30,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: const Center(
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.control_camera_rounded),
                  hintText: 'Search...',
                  border: InputBorder.none),
            ),
          ),
        ),
        flexibleSpace: backgroundColor(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.exit_to_app_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),

      // Body content....//
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.2), BlendMode.dstATop),
              image: const AssetImage("assets/images/walkzero_logo3.png"),
              fit: BoxFit.contain),
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const LearnFlutter();
                  },
                ),
              );
            },
            child: const Text('click Flutter'),
          ),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  colors: <Color>[
                    Color.fromARGB(255, 252, 251, 251),
                    Color.fromARGB(255, 1, 59, 82)
                  ],
                  focalRadius: 4,
                  radius: 1,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    backgroundImage:
                        NetworkImage("assets/images/walkzero_logo3.png"),
                    radius: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "WalkZero",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "www.walkzero.com",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.person_add),
              title: Text("Add Profile"),
            ),
            const ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("About"),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
