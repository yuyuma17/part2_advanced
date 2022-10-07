import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../core/entities/failure.dart';
import '../../../core/entities/post.dart';
import '../../../core/repository/post_repository.dart';

part 'post_cubit.freezed.dart';

class PostCubit extends Cubit<PostState> {
  late final PostRepository _postRepository;

  PostCubit({
    PostRepository? postRepository,
  }) : super(const _Initial()) {
    _postRepository = postRepository ?? GetIt.instance.get<PostRepository>();
  }

  List<Post> _posts = [];

  void getAllPosts() async {
    emit(const _Loading());
    final response = await _postRepository.getAllPosts();
    response.fold(
      (failure) => emit(_Fail(failure)),
      (posts) {
        if (posts != null) {
          _posts = List.from(posts);
          emit(_Success(posts));
        } else {
          emit(const _Fail(UnknownError()));
        }
      },
    );
  }

  void filterByTitle(String title) async {
    final List<Post> result = [];
    for (var post in _posts) {
      if (post.title.contains(title)) {
        result.add(post);
      }
    }
    emit(_Success(title != "" ? result : _posts));
  }
}

@freezed
class PostState with _$PostState {
  const factory PostState.initial() = _Initial;
  const factory PostState.loading() = _Loading;
  const factory PostState.success(List<Post> posts) = _Success;
  const factory PostState.fail(Failure failure) = _Fail;
}
