
import 'package:flutter/material.dart';
import 'package:flutter_mvvm/utils/routes/routes_name.dart';
import 'package:flutter_mvvm/view/home_screen.dart';
import 'package:flutter_mvvm/view/signup_view.dart';
import 'package:flutter_mvvm/view/splash_view.dart';

import '../../view/login_view.dart';

class Routes{

  static MaterialPageRoute generateRoute(RouteSettings settings){

    switch(settings.name){
      case RoutesName.splash:
        return MaterialPageRoute(builder: (BuildContext contaxt) =>SplashView());
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext contaxt) =>HomeScreen());

      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext contaxt) =>LoginView());
      case RoutesName.signUp:
        return MaterialPageRoute(builder: (BuildContext contaxt) =>SignUpView());

      default:
        return MaterialPageRoute(builder: (BuildContext contaxt) =>Scaffold(
          body: const Center(
            child: Text('No route define'),
          ),
        ));
    }
  }
}