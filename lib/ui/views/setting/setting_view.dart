import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'setting_viewmodel.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return ViewModelBuilder<SettingViewModel>.reactive(
      builder: (ctx, model, child) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.chevron_left),
              onPressed: () => model.goBack(),
            ),
          ),
          body: const Center(child: const Text('Settings view')),
        );
      },
      viewModelBuilder: () => SettingViewModel(),
    );
  }
}
