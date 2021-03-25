import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (ctx, model, child) {
        return Scaffold(
          body: Center(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Home view'),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () => model.navigateToSettingView(),
                child: const Text('Go to Settings'),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () => model.navigateToProfileView(),
                child: const Text('Go to Profile'),
              ),
            ],
          )),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
