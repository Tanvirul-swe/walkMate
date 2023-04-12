import 'package:walk_mate/services/localDatabase/database_helper.dart';

class UserHistoryModel {
  final int? id;
  final double target;
  final double complete;
  final int createdAt;
  UserHistoryModel({
    this.id,
    required this.target,
    required this.complete,
    required this.createdAt,
  });
  factory UserHistoryModel.fromLocalDB(Map<String, dynamic> json) =>
      UserHistoryModel(
        id: json[DatabaseHelper.columnId],
        target: json[DatabaseHelper.columnTarget],
        complete: json[DatabaseHelper.columnComplete],
        createdAt: json[DatabaseHelper.columnCreatedAt],
      );

  Map<String, dynamic> toMap() {
    return {
      DatabaseHelper.columnTarget: target,
      DatabaseHelper.columnComplete: complete,
      DatabaseHelper.columnCreatedAt: createdAt,
    };
  }
}
