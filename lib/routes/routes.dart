import 'package:e_commerce_app/screen/auth/forgot_password_screen.dart';
import 'package:e_commerce_app/screen/auth/log_in_screen.dart';
import 'package:e_commerce_app/screen/auth/sign_up_screen.dart';
import 'package:e_commerce_app/screen/navigationscreen/home/cloth_sale_screen.dart';
import 'package:e_commerce_app/screen/navigationscreen/home/fashion_sale_dart.dart';
import 'package:e_commerce_app/screen/navigationscreen/home/home_screen.dart';
import 'package:e_commerce_app/screen/navigationscreen/home/street_cloth_item.dart';
import 'package:e_commerce_app/screen/navigationscreen/tab_screen.dart';

class Routes {
  static const signUpScreen = '/signUpScreen';
  static const logInScreen = '/logInScreen';
  static const forgotPasswordScreen = '/forgotPasswordScreen';
  static const homeScreen = '/homeScreen';
  static const tabScreen = '/tabScreen';
  static const fashionSaleScreen = '/fashionSaleScreen';
  static const streetClothItem = '/streetClothItem';
  static const clothSaleScree = '/clothSaleScree';

  static getRoutes() {
    return {
      signUpScreen: (context) => const SignUpScreen(),
      logInScreen: (context) => const LogInScreen(),
      forgotPasswordScreen: (context) => const ForgotPasswordScreen(),
      homeScreen: (context) => const HomeScreen(),
      tabScreen: (context) => const TabScreen(),
      fashionSaleScreen: (context) => const FashionSaleScreen(),
      streetClothItem: (context) => const StreetClothItem(
            title: 'title',
            imageUrl: 'imageUrl',
            id: 'id',
          ),
      clothSaleScree: (context) => const ClothSaleScree(),
    };
  }
}