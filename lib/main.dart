import 'package:flutter/material.dart';
import 'package:flutter_batch_45days_2026/column_screen.dart';
import 'package:flutter_batch_45days_2026/custom_botttom_bar.dart';
import 'package:flutter_batch_45days_2026/dashboard_screen.dart';
import 'package:flutter_batch_45days_2026/homescreen.dart';
import 'package:flutter_batch_45days_2026/practice.dart';
import 'package:flutter_batch_45days_2026/row_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomBotttomBar(),
    );
  }
}
