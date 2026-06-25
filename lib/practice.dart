import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Practice Screen",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown,
      ),
      body: Center(child: Text("I'm Vanshuu")),
    );
  }
}

class VanshikaPractice extends StatefulWidget {
  const VanshikaPractice({super.key});

  @override
  State<VanshikaPractice> createState() => _VanshikaPracticeState();
}

class _VanshikaPracticeState extends State<VanshikaPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row List"), backgroundColor: Colors.blue),

      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Riya"),
              SizedBox(width: 5),
              Text("Vanshika"),
              SizedBox(width: 5),
              Text("Bipasha"),
              SizedBox(width: 5),
            ],
          ),
        ),
      ),
    );
  }
}
