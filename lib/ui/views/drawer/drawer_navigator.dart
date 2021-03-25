import 'package:flutter/material.dart';
import 'package:nested_navigation/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DrawerNavigator extends StatelessWidget {
  const DrawerNavigator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExtendedNavigator(
        router: DrawerNavigatorRouter(),
        navigatorKey: StackedService.nestedNavigationKey(1),
      ),
    );
  }
}
