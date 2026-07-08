import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_batch_45days_2026/bottom_practice.dart';
import 'package:flutter_batch_45days_2026/column_screen.dart';
import 'package:flutter_batch_45days_2026/custom_botttom_bar.dart';
import 'package:flutter_batch_45days_2026/dashboard_screen.dart';
import 'package:flutter_batch_45days_2026/drop_down.dart';
import 'package:flutter_batch_45days_2026/homescreen.dart';
import 'package:flutter_batch_45days_2026/practice.dart';
import 'package:flutter_batch_45days_2026/row_screen.dart';
import 'package:flutter_batch_45days_2026/sqflitedb/student_list.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    databaseFactory = databaseFactoryFfiWeb;
  } else {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: StudentList());
  }
}
