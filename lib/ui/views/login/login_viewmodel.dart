import 'package:nested_navigation/app/app.locator.dart';
import 'package:nested_navigation/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void login() {
    // todo: not working, route id (1) not found
    // _navigationService.clearStackAndShow(DrawerNavigatorRoutes.homeView, id: 1);

    _navigationService.clearStackAndShow(Routes.drawerNavigator);
  }
}
