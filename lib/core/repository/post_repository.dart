import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';

import '../entities/post.dart';
import '../entities/failure.dart';
import '../entities/comment.dart';
import '../utils/api_response_wrapper.dart';
import '../remote/data_stores/post_remote_data_store.dart';

class PostRepository {
  final PostRemoteDataStore _postRemoteDataStore =
      GetIt.instance.get<PostRemoteDataStore>();

  Future<Either<Failure, List<Post>?>> getAllPosts() async {
    return await wrapRemoteCall(_postRemoteDataStore.getAllPosts());
  }

  Future<Either<Failure, List<Comment>?>> getPostComments({
    required int postId,
  }) async {
    return await wrapRemoteCall(_postRemoteDataStore.getPostComments(postId));
  }
}
