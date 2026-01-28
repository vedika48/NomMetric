import 'package:flutter/material.dart';

class StatusCardHac144 extends StatelessWidget {
  final IconData icon;
  final String title;
  final String message;
  final Color statusColor;
  final String? actionText;
  final VoidCallback? onAction;

  const StatusCardHac144({
    super.key,
    required this.icon,
    required this.title,
    required this.message,
    this.statusColor = Colors.blue,
    this.actionText,
    this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(color: statusColor, width: 5),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: statusColor, size: 28),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    message,
                    style: const TextStyle(fontSize: 14),
                  ),
                  if (actionText != null && onAction != null) ...[
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: onAction,
                        child: Text(actionText!),
                      ),
                    ),
                  ]
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
