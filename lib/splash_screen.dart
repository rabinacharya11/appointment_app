import 'package:flutter/material.dart';
import 'package:flutter_app_6th_may/core/routes/route_constants.dart';
import 'package:flutter_app_6th_may/core/services/navigation_service.dart';
import 'package:flutter_app_6th_may/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> { 

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () { 
   

    navigation.navigateToReplacement(RouteConstants.login);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold( 
      body: Center( 
        child: CircularProgressIndicator(), 
      )
    );
  }
}