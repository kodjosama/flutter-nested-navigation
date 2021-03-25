import 'package:nested_navigation/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SettingViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void goBack() {
    print('prev route ${_navigationService.previousRoute}');

    print('current route ${_navigationService.currentRoute}');

    // todo: not working
    // _navigationService.back();

    // working
    _navigationService.back(id: 1);
  }
}
