import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_batch_45days_2026/list_build.dart';
import 'package:flutter_batch_45days_2026/sqflitedb/student_list.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelp {
  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await initDatabasse();
    return _database;
  }

  Future<Database?> initDatabasse() async {
    final path = await getDatabasesPath();
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
          "CREATE TABLE student(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, rollNo TEXT, className TEXT)",
        );
      },
    );
  }

  Future insertStudent(StudentClass student) async {
    final db = await database;
    return await db?.insert("student", student.toMap());
  }

  Future<List<StudentClass>> getStudents() async {
    final db = await database;

    List<Map<String, dynamic>> maps = await db!.query("student");
    return List.generate(
      maps.length,
      (index) => StudentClass.fromMap(maps[index]),
    );
  }
}
