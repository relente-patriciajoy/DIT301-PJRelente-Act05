// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
// import '../models/note.dart';

// class DBHelper {
//   static Database? _db;

//   Future<Database> get db async {
//     if (_db != null) return _db!;
//     _db = await initDB();
//     return _db!;
//   }

//   Future<Database> initDB() async {
//     String path = join(await getDatabasesPath(), 'notes.db');
//     return await openDatabase(
//       path,
//       version: 1,
//       onCreate: (db, version) async {
//         await db.execute('''
//           CREATE TABLE notes (
//             id INTEGER PRIMARY KEY AUTOINCREMENT,
//             title TEXT,
//             content TEXT,
//             timestamp TEXT
//           )
//         ''');
//       },
//     );
//   }

//   // INSERT note
//   Future<int> insert(Note note) async {
//     final dbClient = await db;
//     return await dbClient.insert('notes', note.toMap());
//   }

//   // GET all notes
//   Future<List<Note>> getNotes() async {
//     final dbClient = await db;
//     final List<Map<String, dynamic>> maps = await dbClient.query('notes');
//     return List.generate(maps.length, (i) => Note.fromMap(maps[i]));
//   }

//   // UPDATE note
//   Future<int> update(Note note) async {
//     final dbClient = await db;
//     return await dbClient.update(
//       'notes',
//       note.toMap(),
//       where: 'id = ?',
//       whereArgs: [note.id],
//     );
//   }

//   // DELETE note
//   Future<int> delete(int id) async {
//     final dbClient = await db;
//     return await dbClient.delete('notes', where: 'id = ?', whereArgs: [id]);
//   }
// }
