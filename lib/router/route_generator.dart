import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:material_design/ui/pages/counter_page.dart';
import 'package:material_design/ui/pages/counter_provider_page.dart';
import 'package:material_design/ui/pages/page_404.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){

    switch(settings.name){

      case '/stateful':
      return _fadeRoute(const CounterPage(),'/stateful' );

      case '/provider':
      return _fadeRoute(const CounterProviderPage(),'/provider' );

      default:
      return _fadeRoute(const Page404(),'/404' );
    }

  }

  static PageRoute _fadeRoute(Widget child, String routeName){

    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 100),
      settings: RouteSettings(name: routeName),
      pageBuilder: (_, __, ___) => child,
      transitionsBuilder:(_, animation, __, ___) =>
       (kIsWeb)
       ?FadeTransition(
        opacity: animation,
        child: child
        )
        : CupertinoPageTransition(
          primaryRouteAnimation: animation,
          secondaryRouteAnimation: __,
          linearTransition: true,
          child: child
        )
    );
  }
}
