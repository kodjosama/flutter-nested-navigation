import 'package:nested_navigation/app/app.locator.dart';
import 'package:nested_navigation/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToSettingView() {
    _navigationService.navigateTo(DrawerNavigatorRoutes.settingView, id: 1);
  }

  void navigateToProfileView() {
    // todo: not working, restart to startup view
    // _navigationService.navigateTo(TabNavigatorRoutes.profileView);

    // todo: not working, route id (2) not found
    // _navigationService.navigateTo(TabNavigatorRoutes.profileView, id: 2);

    _navigationService.navigateTo(Routes.tabNavigator);
  }
}
