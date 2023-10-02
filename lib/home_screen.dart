import 'package:flutter/material.dart';
import 'package:unicode_lp_tasks/login_screen.dart';

class HomeScreen extends StatefulWidget {
  final username;
  const HomeScreen({this.username, super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Text(
                "Welcome \n${widget.username}",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text(
                "LogOut",
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
