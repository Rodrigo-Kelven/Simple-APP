import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final String username;
  final String description;

  const PostItem({
    super.key,
    required this.username,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundImage:
            NetworkImage('https://i.pravatar.cc/150'),
          ),
          title: Text(
            username,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          trailing: const Icon(Icons.more_vert),
        ),

        Image.network('https://picsum.photos/500/500'),

        const Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Icon(Icons.favorite_border),
              SizedBox(width: 10),
              Icon(Icons.chat_bubble_outline),
            ],
          ),
        ),

        // 👇 DESCRIÇÃO DO POST
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyMedium,
              children: [
                TextSpan(
                  text: '$username ',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: description),
              ],
            ),
          ),
        ),

        const SizedBox(height: 10),
      ],
    );
  }
}