import 'package:app_multiplataforma/models/menu_options.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.home_filled,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOption(
        route: 'cantantes',
        icon: Icons.list_outlined,
        name: 'Cantantes',
        screen: const CantantesScreen()),
    MenuOption(
        route: 'canciones',
        icon: Icons.library_music,
        name: 'Canciones',
        screen: const CancionesScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.list_alt_rounded,
        name: 'Card Screen',
        screen: const CardScreen()),

  ];

  /*
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'card': (BuildContext context) => const CardScreen(),
    'alert': (BuildContext context) => const AlertScreen()
  };*/

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> rutasnuevas = {};
    for (final opciones in menuOptions) {
      rutasnuevas
          .addAll({opciones.route: (BuildContext context) => opciones.screen});
    }
    return rutasnuevas;
  }


}
