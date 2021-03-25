import 'package:flutter/material.dart';
import 'package:nested_navigation/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TabNavigator extends StatelessWidget {
  const TabNavigator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExtendedNavigator(
        router: TabNavigatorRouter(),
        navigatorKey: StackedService.nestedNavigationKey(2),
      ),
    );
  }
}
