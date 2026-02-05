import 'package:flutter/material.dart';

class CustomSearchButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final double? size; // optional, default 24
  final double? borderRadius; // optional, default 8

  /// Optional colors for light/dark mode
  final Color? lightBackgroundColor;
  final Color? darkBackgroundColor;
  final Color? lightIconColor;
  final Color? darkIconColor;

  const CustomSearchButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.size,
    this.borderRadius,
    this.lightBackgroundColor,
    this.darkBackgroundColor,
    this.lightIconColor,
    this.darkIconColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bool isDark = theme.brightness == Brightness.dark;

    // Use defaults if null
    final double iconSize = size ?? 24;
    final double radius = borderRadius ?? 8.0;

    // Pick colors based on brightness
    final Color backgroundColor = isDark
        ? darkBackgroundColor ?? theme.colorScheme.secondaryContainer
        : lightBackgroundColor ?? theme.colorScheme.secondaryContainer;

    final Color iconColor = isDark
        ? darkIconColor ?? theme.colorScheme.onSecondaryContainer
        : lightIconColor ?? theme.colorScheme.onSecondaryContainer;

    return IconButton(
      onPressed: onPressed,
      iconSize: iconSize,
      icon: Icon(icon, color: iconColor),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(backgroundColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(radius),
          ),
        ),
      ),
    );
  }
}
