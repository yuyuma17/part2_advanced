import 'package:flutter/material.dart';

import 'route.dart';
import 'presentation/post/pages/post_page.dart';

class AdvancedApp extends StatelessWidget {
  const AdvancedApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: PostPage.routeName,
      onGenerateRoute: AppRoute().onGenerateRoute,
    );
  }
}
