import 'package:flutter/material.dart';
import 'screens/note_list_screen.dart';

void main() {
  runApp(const NoteKeeperApp());
}

class NoteKeeperApp extends StatelessWidget {
  const NoteKeeperApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoteKeeper SQLite',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const NoteListScreen(),
    );
  }
}
