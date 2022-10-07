import 'package:flutter/material.dart';

import 'presentation/post/pages/post_page.dart';
import 'presentation/post/pages/post_detail_page.dart';

class AppRoute {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final routeName = settings.name;
    switch (routeName) {
      case PostPage.routeName:
        return _route(const PostPage(), settings);
      case PostDetailPage.routeName:
        final args = settings.arguments as Map<String, dynamic>;
        return _route(PostDetailPage(post: args['post']), settings);
      default:
        return null;
    }
  }

  MaterialPageRoute _route(Widget page, RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => page, settings: settings);
  }
}
