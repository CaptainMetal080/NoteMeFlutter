import 'package:flutter/material.dart';
import 'new_note_screen.dart'; // Import the New Note screen.

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> notes = []; // To store notes.

  void addNewNote(String title, String description) {
    setState(() {
      notes.add({'title': title, 'description': description});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal, // Custom background color for AppBar
        title: Text(
          'Note Me Flutter',
          style: TextStyle(
            fontFamily: 'RobotoMono', // Custom font family
            fontWeight: FontWeight.bold, // Custom font weight
          ),
        ),
      ),
      body: notes.isEmpty
          ? Center(child: Text('No notes here.'))
          : ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(notes[index]['title']!),
            subtitle: Text(notes[index]['description']!),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal, // Custom background color for FAB
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => NewNoteScreen(addNewNote),
            ),
          );
        },
        child: Icon(
          Icons.add, // Icon for FAB
          color: Colors.white, // White color for the icon
        ),
      ),
    );
  }
}
