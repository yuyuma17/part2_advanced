import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../core/entities/failure.dart';
import '../../../core/entities/comment.dart';
import '../../../core/repository/post_repository.dart';

part 'comment_cubit.freezed.dart';

class CommentCubit extends Cubit<CommentState> {
  late final PostRepository _postRepository;

  CommentCubit({
    PostRepository? postRepository,
  }) : super(const _Initial()) {
    _postRepository = postRepository ?? GetIt.instance.get<PostRepository>();
  }

  void getPostComments({required int postId}) async {
    emit(const _Loading());
    final response = await _postRepository.getPostComments(postId: postId);
    response.fold(
      (failure) => emit(_Fail(failure)),
      (comments) {
        if (comments != null) {
          emit(_Success(comments));
        } else {
          emit(const _Fail(UnknownError()));
        }
      },
    );
  }
}

@freezed
class CommentState with _$CommentState {
  const factory CommentState.initial() = _Initial;
  const factory CommentState.loading() = _Loading;
  const factory CommentState.success(List<Comment> comments) = _Success;
  const factory CommentState.fail(Failure failure) = _Fail;
}
