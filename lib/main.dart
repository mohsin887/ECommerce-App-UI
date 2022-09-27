import 'package:e_commerce_app/routes/navigation_service.dart';
import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/screen/auth/sign_up_screen.dart';
import 'package:e_commerce_app/widgets/theme/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce',
      theme: themeData(context),
      // home: const SignUpScreen(),
      routes: Routes.getRoutes(),
      initialRoute: Routes.signUpScreen,
      onGenerateRoute: (settings) {
        if (kDebugMode) {
          print(settings.arguments);
        }
        return null;
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => const SignUpScreen(),
        );
      },
    );
  }
}