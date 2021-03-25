import 'package:nested_navigation/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void goBack() {
    // todo: hm... it's working
    _navigationService.back();

    // todo: not working
    // _navigationService.back(id: 2);
  }
}
