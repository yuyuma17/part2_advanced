import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/comment_cubit.dart';
import '../widgets/comment_item.dart';
import '../../../core/entities/post.dart';

class PostDetailPage extends StatefulWidget {
  static const routeName = '/post/detail';

  final Post post;
  const PostDetailPage({required this.post, Key? key}) : super(key: key);

  @override
  State<PostDetailPage> createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  final CommentCubit _commentCubit = CommentCubit();

  @override
  void initState() {
    super.initState();
    _commentCubit.getPostComments(postId: widget.post.id);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => _commentCubit),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text("Comments: Post ${widget.post.id}"),
        ),
        body: const SafeArea(child: _CommentSection()),
      ),
    );
  }
}

class _CommentSection extends StatelessWidget {
  const _CommentSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentCubit, CommentState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (comments) {
            return ListView.builder(
              itemCount: comments.length,
              itemBuilder: (context, index) {
                final comment = comments[index];
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: CommentItem(comment: comment),
                );
              },
            );
          },
          fail: (failure) {
            return const Center(child: Text('Something went wrong'));
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
