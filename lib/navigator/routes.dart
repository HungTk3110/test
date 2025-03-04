import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qsoft_test/navigator/fade_page_route.dart';
import 'package:qsoft_test/ui/home/home_page.dart';

enum Routes {
  home,
}

class _Paths {
  static const String home = "/home";

  static const Map<Routes, String> _pathMap = {
    Routes.home: _Paths.home,
  };

  static String of(Routes route) => _pathMap[route] ?? home;
}

class AppNavigator {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        return FadeRoute(page: const HomePage());
    }
  }

  // static void push<T>(Routes route, [T? arguments]) =>
  //     WidgetsBinding.instance.addPostFrameCallback((_) {
  //       state?.pushNamed(_Paths.of(route), arguments: arguments);
  //     });

  static Future? push<T>(Routes route, [T? arguments]) =>
      state?.pushNamed(_Paths.of(route), arguments: arguments);

  static Future? replaceWith<T>(Routes route, [T? arguments]) =>
      state?.pushReplacementNamed(_Paths.of(route), arguments: arguments);

  static Future? pushAndRemove<T>(Routes route, [T? arguments]) =>
      state?.pushNamedAndRemoveUntil(_Paths.of(route), (route) => false);

  static void pop({dynamic result}) => state?.pop(result);

  static NavigatorState? get state => navigatorKey.currentState;
}
