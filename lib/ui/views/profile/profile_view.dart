import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      builder: (ctx, model, child) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.chevron_left),
              onPressed: () => model.goBack(),
            ),
          ),
          body: const Center(child: const Text('Profile view')),
        );
      },
      viewModelBuilder: () => ProfileViewModel(),
    );
  }
}
