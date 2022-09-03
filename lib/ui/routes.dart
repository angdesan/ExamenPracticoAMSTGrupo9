
import 'package:examen_final_flutter/ui/views/home/home_view.dart';
import 'package:examen_final_flutter/ui/views/login/GoogleAuthenticator.dart';
import 'package:examen_final_flutter/ui/views/splash.dart';
import 'package:flutter/material.dart';


class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashView() );
      case '/GoogleAuthenticator':
        return MaterialPageRoute(builder: (_) => GoogleAuthenticator() );
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeView());
      default:
//Aquí se irán agregando las rutas por cada clase dart creada.
    return _errorRoute();
  }
  }
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
          centerTitle: true,
        ),
        body: const Center(
          child: Text("ERROR"),
        ),
      );
    });
  }
}