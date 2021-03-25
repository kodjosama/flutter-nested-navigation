import 'package:nested_navigation/app/app.locator.dart';
import 'package:nested_navigation/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends FutureViewModel<void> {
  final NavigationService _navigationService = locator<NavigationService>();

  @override
  Future<void> futureToRun() async {
    await Future.delayed(const Duration(seconds: 3));

    // _navigationService.clearStackAndShow(Routes.loginView);

    // whoooaaa, it's working :)
    _navigationService.clearStackAndShow(
      '${Routes.drawerNavigator}${DrawerNavigatorRoutes.settingView}',
    );
  }
}
