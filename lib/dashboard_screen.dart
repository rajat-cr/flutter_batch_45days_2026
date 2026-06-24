import 'package:flutter/material.dart';
import 'package:flutter_batch_45days_2026/home_screen_2.dart';
import 'package:flutter_batch_45days_2026/homescreen.dart';
import 'package:flutter_batch_45days_2026/profile_screen.dart';
import 'package:flutter_batch_45days_2026/search_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 0;

  void selectedValue(int index) {
    setState(() {
      selectedIndex = index;
    });

    print("SelectedINdex value: $selectedIndex");
  }

  List screen = [HomeScreen2(), SearchScreen(), ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        backgroundColor: Colors.deepPurple,
      ),
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: ((value) => {selectedValue(value)}),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profile",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.settings),
          //   label: "Settings",
          // ),
        ],
      ),
    );
  }
}
