import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_search_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Notes', style: Theme.of(context).textTheme.headlineLarge),
        CustomSearchButton(
          icon: Icons.search_rounded,
          onPressed: () {},
          lightBackgroundColor: Colors.grey.shade200,
          darkBackgroundColor: Colors.white12,
        ),
      ],
    );
  }
}
