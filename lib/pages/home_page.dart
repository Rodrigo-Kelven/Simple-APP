import 'package:flutter/material.dart';
import '../widgets/story_item.dart';
import '../widgets/post_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Instagram'),
        actions: const [
          Icon(Icons.favorite_border),
          SizedBox(width: 10),
          Icon(Icons.send),
          SizedBox(width: 10),
        ],
      ),

      body: ListView(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (_, __) => const StoryItem(),
            ),
          ),

          const Divider(color: Colors.white24),

          const PostItem(
            username: 'zezinhu matador de porco',
            description: 'Curtindo um dia incrível! ☀️🔥',
          ),
        ],
      ),
    );
  }
}