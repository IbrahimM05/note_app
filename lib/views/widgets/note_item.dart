import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  final Color? color;
  final VoidCallback? onTap;

  const NoteItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.date,
    this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    // Default pastel color if none provided
    final defaultColor =
        color ?? (isDark ? Colors.deepPurple : Colors.orangeAccent);

    return Card(
      color: defaultColor,
      // elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          spacing: 16,
          children: [
            ListTile(
              horizontalTitleGap: 0,
              minVerticalPadding: 0,
              contentPadding: const EdgeInsets.all(0),
              onTap: onTap,
              title: Text(title),
              titleTextStyle: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  subtitle,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              subtitleTextStyle: Theme.of(context).textTheme.bodyLarge
                  ?.copyWith(
                    color: Theme.of(
                      context,
                    ).textTheme.bodyLarge?.color?.withValues(alpha: 0.6),
                    letterSpacing: 0,
                  ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete_rounded),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                date,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(
                    context,
                  ).textTheme.bodySmall?.color?.withValues(alpha: 0.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
