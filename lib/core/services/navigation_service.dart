import 'package:flutter/material.dart';

class NavigationSevice {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState!
        .pushNamed(routeName, arguments: arguments);
  }

  void goBack() {
    if (!navigatorKey.currentState!.canPop()) {
      return;
    }
    return navigatorKey.currentState!.pop();
  }

  // replacement
  void navigateToReplacement(String routeName, {dynamic arguments}) {
    goBack();
    navigatorKey.currentState!
        .pushReplacementNamed(routeName, arguments: arguments);
  }
}
