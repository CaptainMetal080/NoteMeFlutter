import 'package:flutter/material.dart';

class NewNoteScreen extends StatefulWidget {
  final Function addNewNote;

  NewNoteScreen(this.addNewNote);

  @override
  _NewNoteScreenState createState() => _NewNoteScreenState();
}

class _NewNoteScreenState extends State<NewNoteScreen> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  void submitNote() {
    final title = titleController.text;
    final description = descriptionController.text;

    if (title.isEmpty || description.isEmpty) {
      return; // Don't save if the fields are empty
    }

    widget.addNewNote(title, description);
    Navigator.of(context).pop(); // Go back to home screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal, // Custom background color for AppBar
        title: Text(
          'New Note',
          style: TextStyle(
            fontFamily: 'RobotoMono', // Custom font family
            fontWeight: FontWeight.bold, // Custom font weight
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: submitNote,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, backgroundColor: Colors.cyan
              ),
              child: Text('Save Note'),
            ),
          ],
        ),
      ),
    );
  }
}
