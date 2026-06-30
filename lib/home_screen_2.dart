import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      // height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Fluttertoast.showToast(msg: "This my Alert Message!");

              print("My name is :Coder Roots");
            },
            child: Text("Eleavted Button"),
          ),

          SizedBox(height: 10),
          OutlinedButton(
            onPressed: () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text("This is my Snackbar")));
            },
            child: Text("Outlined Button"),
          ),

          SizedBox(height: 10),
        

          TextButton(
            onPressed: () {
              showAlertDailog(context);
            },
            child: Text("Text Button"),
          ),
          SizedBox(height: 10),


        ],
      ),
    );
  }
}

void showAlertDailog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Title"),
        
        content: Text("This is my Alert Message"),
        actions: [
          TextButton(onPressed: () {}, child: Text("Cancel")),
          TextButton(onPressed: () {}, child: Text("Accept")),
        ],
      );
    },
  );
}
