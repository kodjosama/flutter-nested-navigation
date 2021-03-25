import 'package:nested_navigation/ui/views/drawer/drawer_navigator.dart';
import 'package:nested_navigation/ui/views/home/home_view.dart';
import 'package:nested_navigation/ui/views/login/login_view.dart';
import 'package:nested_navigation/ui/views/profile/profile_view.dart';
import 'package:nested_navigation/ui/views/setting/setting_view.dart';
import 'package:nested_navigation/ui/views/startup/startup_view.dart';
import 'package:nested_navigation/ui/views/tab/tab_navigator.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  const MaterialRoute(page: StartupView, initial: true),
  const MaterialRoute(page: LoginView),
  const MaterialRoute(page: DrawerNavigator, children: [
    const MaterialRoute(page: HomeView, initial: true),
    const MaterialRoute(page: SettingView),
  ]),
  const MaterialRoute(page: TabNavigator, children: [
    const MaterialRoute(page: ProfileView, initial: true),
  ]),
], dependencies: [
  LazySingleton(classType: NavigationService),
])
class App {}
