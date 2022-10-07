import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../entities/post.dart';
import '../../entities/comment.dart';

part 'post_remote_data_store.g.dart';

@RestApi()
abstract class PostRemoteDataStore {
  factory PostRemoteDataStore(Dio dio) {
    return _PostRemoteDataStore(dio);
  }

  @GET('posts')
  Future<List<Post>> getAllPosts();

  @GET('posts/{postId}/comments')
  Future<List<Comment>> getPostComments(
    @Path('postId') int postId,
  );
}
