import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          spacing: 16,
          children: [
            CustomAppBar(),
            NoteItem(
              title: 'Note 1',
              subtitle: 'notes \nnotes \nnotes',
              date: 'Feb 6, 2026',
            ),
            NoteItem(
              title: 'Note 2',
              subtitle: 'notes \nnotes \nnotes',
              date: 'Feb 6, 2026',
            ),
            NoteItem(
              title: 'Note 3',
              subtitle: 'notes \nnotes \nnotes',
              date: 'Feb 6, 2026',
            ),
          ],
        ),
      ),
    );
  }
}
