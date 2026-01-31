import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  /// Main section title (required)
  final String title;

  /// Optional subtitle shown below title
  final String? subtitle;

  /// Optional trailing widget (text, icon, button, etc.)
  final Widget? trailing;

  /// Padding around the header
  final EdgeInsetsGeometry padding;

  /// Alignment for title & subtitle
  final CrossAxisAlignment alignment;

  /// Title text style override
  final TextStyle? titleStyle;

  /// Subtitle text style override
  final TextStyle? subtitleStyle;

  const SectionHeader({
    Key? key,
    required this.title,
    this.subtitle,
    this.trailing,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    this.alignment = CrossAxisAlignment.start,
    this.titleStyle,
    this.subtitleStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: alignment,
              children: [
                Text(
                  title,
                  style: titleStyle ??
                      theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                if (subtitle != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    subtitle!,
                    style: subtitleStyle ??
                        theme.textTheme.bodySmall?.copyWith(
                          color: theme.textTheme.bodySmall?.color
                              ?.withOpacity(0.7),
                        ),
                  ),
                ],
              ],
            ),
          ),
          if (trailing != null) ...[
            const SizedBox(width: 8),
            trailing!,
          ],
        ],
      ),
    );
  }
}