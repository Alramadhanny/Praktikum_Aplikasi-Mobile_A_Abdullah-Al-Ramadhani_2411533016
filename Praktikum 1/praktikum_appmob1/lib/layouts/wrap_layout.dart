import 'package:flutter/material.dart';

class WrapLayout extends StatelessWidget {
  const WrapLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Wrap Layout',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _buildChip('Flutter', Colors.blue),
              _buildChip('Dart', Colors.teal),
              _buildChip('Mobile', Colors.purple),
              _buildChip('Android', Colors.green),
              _buildChip('iOS', Colors.grey),
              _buildChip('Widget', Colors.orange),
              _buildChip('Layout', Colors.red),
              _buildChip('UI', Colors.pink),
              _buildChip('Design', Colors.indigo),
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildChip(String label, Color color) {
    return Chip(
      label: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: color,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    );
  }
}
