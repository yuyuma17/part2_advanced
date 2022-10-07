import 'package:flutter/material.dart';

import '../../../core/entities/post.dart';

class PostItem extends StatelessWidget {
  final Post post;
  const PostItem({required this.post, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${post.id}. ${post.title}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(post.body),
      ],
    );
  }
}
