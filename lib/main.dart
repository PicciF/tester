// ignore_for_file: deprecated_member_use

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_router.gr.dart';

void main() async {
  final appRouter = AppRouter();
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) => runApp(
      DevicePreview(
        enabled: kDebugMode,
        builder: (context) => MaterialApp.router(
          title: 'Nobis',
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),

          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.

          useInheritedMediaQuery: true,
          //builder: (context, router) => DevicePreview.appBuilder(context, router),
        ), // Wrap your app
      ),
    ),
  );
}
