import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tugas_flutter_2/tugas_flutter_2/tugas_flutter_11/model/user.dart';

// class DbHelper {
//   static Future<Database> databaseHelper() async {
//     final dbPath = await getDatabasesPath();
//     return openDatabase(
//       join(dbPath, 'login.db'),
//       onCreate: (db, version) {
//         return db.execute(
//           'CREATE TABLE users(id INTEGER PRIMARY KEY, email TEXT, password TEXT, name TEXT)',
//         );
//       },
//       version: 1,
//     );
//   }

//   static Future<void> registerUser(User user) async {
//     final db = await databaseHelper();
//     await db.insert(
//       'users',
//       user.toMap(),
//       conflictAlgorithm: ConflictAlgorithm.replace,
//     );
//   }

//   static Future<User?> loginUser(String email, String password) async {
//     final db = await databaseHelper();
//     final List<Map<String, dynamic>> results = await db.query(
//       'users',
//       where: 'email = ? AND password = ?',
//       whereArgs: [email, password],
//     );

//     if (results.isNotEmpty) {
//       return User.fromMap(results.first);
//     }
//     return null;
//   }

//   static Future<List<User>> getAllUsers() async {
//     final db = await databaseHelper();
//     final List<Map<String, dynamic>> results = await db.query('users');
//     return results.map((e) => User.fromMap(e)).toList();
//   }

//   static Future<void> updateUser(User user) async {
//     final db = await databaseHelper();
//     await db.update(
//       'users',
//       user.toMap(),
//       where: 'id = ?',
//       whereArgs: [user.id],
//       conflictAlgorithm: ConflictAlgorithm.replace,
//     );
//   }

//   static Future<void> deleteUser(int id) async {
//     final db = await databaseHelper();
//     await db.delete('users', where: 'id = ?', whereArgs: [id]);
//   }
// }

class DbHelper {
  static Future<Database> databaseHelper() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'login.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE users('
          'id INTEGER PRIMARY KEY AUTOINCREMENT, '
          'email TEXT NOT NULL, '
          'password TEXT NOT NULL, '
          'name TEXT NOT NULL)',
        );
      },
      version: 1,
    );
  }

  static Future<int> registerUser(User user) async {
    final db = await databaseHelper();
    return await db.insert(
      'users',
      user.toMap()..remove('id'), // id dibuang biar auto increment
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<User?> loginUser(String email, String password) async {
    final db = await databaseHelper();
    final List<Map<String, dynamic>> results = await db.query(
      'users',
      where: 'email = ? AND password = ?',
      whereArgs: [email, password],
    );

    if (results.isNotEmpty) {
      return User.fromMap(results.first);
    }
    return null;
  }

  static Future<List<User>> getAllUsers() async {
    final db = await databaseHelper();
    final List<Map<String, dynamic>> results = await db.query('users');
    return results.map((e) => User.fromMap(e)).toList();
  }

  static Future<void> updateUser(User user) async {
    final db = await databaseHelper();
    await db.update(
      'users',
      user.toMap()..remove('id'),
      where: 'id = ?',
      whereArgs: [user.id],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<void> deleteUser(int id) async {
    final db = await databaseHelper();
    await db.delete('users', where: 'id = ?', whereArgs: [id]);
  }
}
