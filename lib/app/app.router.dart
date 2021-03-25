// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../ui/views/drawer/drawer_navigator.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/login/login_view.dart';
import '../ui/views/profile/profile_view.dart';
import '../ui/views/setting/setting_view.dart';
import '../ui/views/startup/startup_view.dart';
import '../ui/views/tab/tab_navigator.dart';

class Routes {
  static const String startupView = '/';
  static const String loginView = '/login-view';
  static const String drawerNavigator = '/drawer-navigator';
  static const String tabNavigator = '/tab-navigator';
  static const all = <String>{
    startupView,
    loginView,
    drawerNavigator,
    tabNavigator,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(
      Routes.drawerNavigator,
      page: DrawerNavigator,
      generator: DrawerNavigatorRouter(),
    ),
    RouteDef(
      Routes.tabNavigator,
      page: TabNavigator,
      generator: TabNavigatorRouter(),
    ),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartupView(),
        settings: data,
      );
    },
    LoginView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const LoginView(),
        settings: data,
      );
    },
    DrawerNavigator: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const DrawerNavigator(),
        settings: data,
      );
    },
    TabNavigator: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const TabNavigator(),
        settings: data,
      );
    },
  };
}

class DrawerNavigatorRoutes {
  static const String homeView = '/';
  static const String settingView = '/setting-view';
  static const all = <String>{
    homeView,
    settingView,
  };
}

class DrawerNavigatorRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(DrawerNavigatorRoutes.homeView, page: HomeView),
    RouteDef(DrawerNavigatorRoutes.settingView, page: SettingView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    SettingView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SettingView(),
        settings: data,
      );
    },
  };
}

class TabNavigatorRoutes {
  static const String profileView = '/';
  static const all = <String>{
    profileView,
  };
}

class TabNavigatorRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(TabNavigatorRoutes.profileView, page: ProfileView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    ProfileView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ProfileView(),
        settings: data,
      );
    },
  };
}
