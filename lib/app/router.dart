import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:stacked_architecture_sample/ui/views/home/home_view.dart';
import 'package:stacked_architecture_sample/ui/views/startup/startup_view.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: StartupView, initial: true),
  // MaterialRoute(page: HomeView),
  CustomRoute<bool>(page: HomeView, transitionsBuilder: TransitionsBuilders.fadeIn,durationInMilliseconds: 1000,)
])
class $Router {}


///
///
/// Use: flutter packages pub run build_runner watch
/// or : flutter packages pub run build_runner build
/// to generate router.gr.dart file which contains the generated routes.
