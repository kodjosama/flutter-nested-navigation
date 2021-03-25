import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'startup_viewmodel.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (ctx, model, child) => Scaffold(
        body: const Center(child: const Text('Startup view')),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}
