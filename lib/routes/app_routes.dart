import 'package:flutter/material.dart';
import 'package:proyecto_final/models/models.dart';
import 'package:proyecto_final/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'login';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'login',
        screen: LoginScreen(),
        icon: Icons.person,
        title: 'login'),
    MenuOption(
        route: 'home',
        screen: const HomeScreen(),
        icon: Icons.home,
        title: 'home')
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertaScreen(),
    );
  }
}
