import 'package:stacked/stacked.dart';
import 'package:stacked_architecture_sample/app/locator.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/router.gr.dart' as AutoRouter;

class StartupViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  Future navigateToHome() async {
    await _navigationService.navigateTo(AutoRouter.Routes.homeView,
        arguments: AutoRouter.HomeViewArguments(title: "Test title"));
  }
}
