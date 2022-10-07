import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/post_item.dart';
import '../cubit/post_cubit.dart';
import 'post_detail_page.dart';

class PostPage extends StatefulWidget {
  static const routeName = '/post';

  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final PostCubit _postCubit = PostCubit();

  @override
  void initState() {
    super.initState();
    _postCubit.getAllPosts();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => _postCubit),
      ],
      child: Scaffold(
        appBar: AppBar(title: const Text('Posts')),
        body: Column(
          children: const [
            _FilterTextField(),
            Expanded(child: SafeArea(child: _PostSection())),
          ],
        ),
      ),
    );
  }
}

class _FilterTextField extends StatefulWidget {
  const _FilterTextField({Key? key}) : super(key: key);

  @override
  State<_FilterTextField> createState() => _FilterTextFieldState();
}

class _FilterTextFieldState extends State<_FilterTextField> {
  TextEditingController? _textEditingController;
  FocusNode? _focusNode;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _textEditingController?.dispose();
    _focusNode?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextField(
        controller: _textEditingController,
        focusNode: _focusNode,
        autocorrect: false,
        decoration: const InputDecoration(hintText: "Search by title"),
        onChanged: (text) {
          context.read<PostCubit>().filterByTitle(text);
        },
      ),
    );
  }
}

class _PostSection extends StatelessWidget {
  const _PostSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostCubit, PostState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (posts) {
            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 25.0,
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: InkWell(
                    onTap: () {
                      final args = {'post': post};
                      Navigator.of(context).pushNamed(
                        PostDetailPage.routeName,
                        arguments: args,
                      );
                    },
                    child: PostItem(post: post),
                  ),
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
