
import 'package:flutter/material.dart';
import 'package:flutter_mvvm/utils/routes/routes_name.dart';
import 'package:flutter_mvvm/view/home_screen.dart';

import '../../view/login_screen.dart';

class Routes{

  static MaterialPageRoute generateRoute(RouteSettings settings){

    switch(settings.name){
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext contaxt) =>HomeScreen());

      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext contaxt) =>LoginScreen());

      default:
        return MaterialPageRoute(builder: (BuildContext contaxt) =>Scaffold(
          body: const Center(
            child: Text('No route define'),
          ),
        ));
    }
  }
}