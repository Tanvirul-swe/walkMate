// ignore_for_file: avoid_print,

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  final _databaseName = "UserData.db";
  final _databaseVersion = 1;
  // make this a singleton class
  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  // only have a single app-wide reference to the database

  Future<Database?> database() async {
    Database? database;
    var databasesPath = await getDatabasesPath();
    deleteDatabase(databasesPath);
    if (database != null) {
      return database;
    } else {
      database = await _initDatabase();
    }

    return database;
  }

// SQL code to initialize database
  Future<Database> _initDatabase() async {
    await getApplicationDocumentsDirectory();
    var databasesPath = await getDatabasesPath();
    String path = "$databasesPath/$_databaseName";

    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  // SQL code to create the database table
  // User History Table
  static const String userHistory = 'user_history';
  static const String columnId = 'id';
  static const String columnTarget = 'target';
  static const String columnComplete = 'complete';
  static const String columnCreatedAt = 'created_at';

  Future _onCreate(Database db, int version) async {
    try {
      await db.execute('''
        CREATE TABLE $userHistory(
          $columnId INTEGER PRIMARY KEY,
          $columnTarget REAL,
          $columnComplete REAL,
          $columnCreatedAt INTEGER
        )
      ''');
    } catch (e) {
      print("Error in creating table: $e");
    }
  }
}
