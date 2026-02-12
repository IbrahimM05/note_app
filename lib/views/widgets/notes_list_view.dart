import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: NoteItem(
            title: 'title',
            content: 'content \ncontent \ncontent',
            date: DateTime.now().toString(),
          ),
        );
      },
    );
  }
}
