import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_6th_may/core/routes/route_constants.dart';
import 'package:flutter_app_6th_may/core/routes/routes.dart';
import 'package:flutter_app_6th_may/core/services/navigation_service.dart';
import 'package:flutter_app_6th_may/features/auth/providers/auth_provider.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

final navigation = NavigationSevice();

void main()async {  
  WidgetsFlutterBinding.ensureInitialized(); 
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MultiProvider ( 
    providers: [ 
      ChangeNotifierProvider(create: (_)=>AuthProvider()), 
    
    ],
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigation.navigatorKey,
      title: 'Flutter Demo',
      onGenerateRoute: Routes.onGenerateRoute,
      initialRoute: RouteConstants.splashScreen,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
