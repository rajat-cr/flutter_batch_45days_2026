import 'package:flutter/material.dart';
import 'package:flutter_batch_45days_2026/home_screen_2.dart';
import 'package:flutter_batch_45days_2026/profile_screen.dart';
import 'package:flutter_batch_45days_2026/search_screen.dart' show SearchScreen;

class BottomPractice extends StatefulWidget {
  const BottomPractice({super.key});

  @override
  State<BottomPractice> createState() => _BottomPracticeState();
}

class _BottomPracticeState extends State<BottomPractice> {
  int selectedIndex = 0;

  List screen = [HomeScreen2(), SearchScreen(), ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Practice"), backgroundColor: Colors.blueGrey),

      body: screen[selectedIndex],

      bottomNavigationBar: Card(
        margin: EdgeInsets.all(20),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(30),
        ),
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // GestureDetector(
              //  onTap: ()
              //  {},
              //   child: ,
              // ),
              IconButton(
                onPressed: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
                icon: Icon(
                  selectedIndex == 0 ? Icons.home : Icons.home_outlined,
                  color: Colors.blueGrey,
                ),
              ),

              IconButton(
                onPressed: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
                icon: Icon(
                  selectedIndex == 1 ? Icons.settings : Icons.settings_outlined,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                },
                icon: Icon(
                  selectedIndex == 2
                      ? Icons.account_circle
                      : Icons.account_circle_outlined,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
