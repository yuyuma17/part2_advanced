import 'package:flutter/material.dart';
import 'package:part2_advanced/core/entities/comment.dart';

class CommentItem extends StatelessWidget {
  final Comment comment;
  const CommentItem({required this.comment, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Name: ${comment.name}'),
        Text('Email: ${comment.email}'),
        Text(comment.body),
      ],
    );
  }
}
