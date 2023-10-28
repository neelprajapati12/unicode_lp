import 'package:flutter/material.dart';
import 'package:unicode_lp_tasks/view/about_page.dart';
import 'package:unicode_lp_tasks/view/home_screen.dart';
import 'package:unicode_lp_tasks/view/personal_info.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentindex = 0;
  final tabs = [
    HomeScreen(),
    PersonalInfo(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        currentIndex: currentindex,
        //type: BottomNavigationBarType.fixed,
        onTap: (value) {
          currentindex = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              // color: Theme.of(context).primaryColor,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_border_outlined,
              // color: Theme.of(context).primaryColor,
            ),
            label: "Bookmarks",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              // color: Theme.of(context).primaryColor,
            ),
            label: "Info",
          ),
        ],
      ),
      body: tabs[currentindex],
    );
  }
}
