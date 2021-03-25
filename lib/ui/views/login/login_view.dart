import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (ctx, model, child) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Login view'),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () => model.login(),
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
