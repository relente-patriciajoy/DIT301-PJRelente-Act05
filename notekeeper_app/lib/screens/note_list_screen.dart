import 'package:flutter/material.dart';
import '../db/db_helper.dart';
import '../models/note.dart';
import 'note_edit_screen.dart';

class NoteListScreen extends StatefulWidget {
  const NoteListScreen({super.key});

  @override
  State<NoteListScreen> createState() => _NoteListScreenState();
}

class _NoteListScreenState extends State<NoteListScreen> {
  final DBHelper _dbHelper = DBHelper();
  List<Note> notes = [];

  @override
  void initState() {
    super.initState();
    loadNotes();
  }

  // Load notes from database
  Future<void> loadNotes() async {
    final data = await _dbHelper.getNotes();
    setState(() {
      notes = data;
    });
  }

  // Delete note
  void deleteNote(int id) async {
    await _dbHelper.delete(id);
    loadNotes();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Note deleted successfully')),
    );
  }

  // Navigate to edit or add note screen
  void openNoteEditor({Note? note}) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => NoteEditScreen(note: note)),
    );
    loadNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Notes'),
      ),
      body: notes.isEmpty
          ? const Center(
              child: Text(
                'No notes yet. Tap + to add one!',
                style: TextStyle(fontSize: 16),
              ),
            )
          : ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                final note = notes[index];
                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: ListTile(
                    title: Text(note.title,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      note.content,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () => deleteNote(note.id!),
                    ),
                    onTap: () => openNoteEditor(note: note),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => openNoteEditor(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
