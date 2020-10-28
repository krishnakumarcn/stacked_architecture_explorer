import 'package:flutter/material.dart';
import 'package:stacked_architecture_sample/app/locator.dart';
import 'package:stacked_architecture_sample/ui/views/partial_builds/partial_build_view.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/router.gr.dart' as AutoRouter;

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // initialRoute: AutoRouter.Routes.startupView,
      home: PartialBuildView(),
      onGenerateRoute: AutoRouter.Router(),
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}