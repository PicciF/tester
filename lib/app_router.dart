// @CupertinoAutoRouter
// @CustomAutoRouter
//@MaterialAutoRouter

import 'package:auto_route/auto_route.dart';
import 'package:minimeet/scaffolds/scaffold_customize.dart';

@AdaptiveAutoRouter(
  //replaceInRouteName: 'Scaffold,RouteScaffold',
  routes: <AutoRoute>[
    //AutoRoute(page: ScaffoldSplash),
    //AutoRoute(page: ScaffoldLogin, guards: [SplashGuard]),

    AutoRoute(page: ScaffoldCustomize, initial: true),

    //AutoRoute(page: BookDetailsPage),
  ],
)
class $AppRouter {}
