import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage:
            NetworkImage('https://i.pravatar.cc/150'),
          ),
          const SizedBox(height: 5),
          const Text(
            'user',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}