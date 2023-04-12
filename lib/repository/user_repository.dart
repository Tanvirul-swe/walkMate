import 'package:sqflite/sqflite.dart';
import 'package:walk_mate/model/user_history_model.dart';
import 'package:walk_mate/services/localDatabase/database_helper.dart';

class UserRepository {
  Future<List<UserHistoryModel>> getUserHistory() async {
    Database? db = await DatabaseHelper.instance.database();
    List<Map<String, dynamic>> response =
        await db!.query(DatabaseHelper.userHistory);
    return response.map((c) => UserHistoryModel.fromLocalDB(c)).toList();
  }
}
