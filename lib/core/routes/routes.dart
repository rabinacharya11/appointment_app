import 'package:flutter/material.dart';
import 'package:flutter_app_6th_may/appointment_screen.dart';
import 'package:flutter_app_6th_may/core/routes/route_constants.dart';
import 'package:flutter_app_6th_may/features/admin/admin_home_screen.dart';
import 'package:flutter_app_6th_may/features/appointment/presentation/main_screen.dart';
import 'package:flutter_app_6th_may/features/auth/presentation/login_screen.dart';
import 'package:flutter_app_6th_may/features/auth/presentation/register_screen.dart';
import 'package:flutter_app_6th_may/splash_screen.dart';

class Routes { 

  static Route<dynamic> onGenerateRoute(RouteSettings settings) { 

    switch(settings.name) { 
      case RouteConstants.splashScreen: 
        return MaterialPageRoute(builder: (_) => const SplashScreen());  

        case RouteConstants.home: 
        return MaterialPageRoute(builder: (_) => UserHomeScreen()); 

        case RouteConstants.addAppointmentScreen: 
        return MaterialPageRoute(builder: (_) => AddAppointmentPage()); 

        case RouteConstants.adminHome: 
        return MaterialPageRoute(builder: (_) => AdminHomeScreen()); 

        case RouteConstants.login:
        return MaterialPageRoute(builder: (_) =>  LoginScreen()); 

        case RouteConstants.register:
        return MaterialPageRoute(builder: (_) =>  RegisterScreen());

        default : 
        return MaterialPageRoute(builder: (_) => Scaffold(body: Center(child: Text('No route defined for ${settings.name}'))));

       
    }

    

  }
}