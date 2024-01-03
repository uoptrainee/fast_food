import 'package:flutter/material.dart';
import 'package:fast_food/presentation/iphone_14_15_pro_eight_screen/iphone_14_15_pro_eight_screen.dart';
import 'package:fast_food/presentation/iphone_14_15_pro_four_screen/iphone_14_15_pro_four_screen.dart';
import 'package:fast_food/presentation/iphone_14_15_pro_five_screen/iphone_14_15_pro_five_screen.dart';
import 'package:fast_food/presentation/iphone_14_15_pro_nine_container_screen/iphone_14_15_pro_nine_container_screen.dart';
import 'package:fast_food/presentation/iphone_14_15_pro_ten_screen/iphone_14_15_pro_ten_screen.dart';
import 'package:fast_food/presentation/iphone_14_15_pro_seven_screen/iphone_14_15_pro_seven_screen.dart';
import 'package:fast_food/presentation/iphone_14_15_pro_eleven_screen/iphone_14_15_pro_eleven_screen.dart';
import 'package:fast_food/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone1415ProEightScreen =
      '/iphone_14_15_pro_eight_screen';

  static const String iphone1415ProFourScreen = '/iphone_14_15_pro_four_screen';

  static const String iphone1415ProFiveScreen = '/iphone_14_15_pro_five_screen';

  static const String iphone1415ProNinePage = '/iphone_14_15_pro_nine_page';

  static const String iphone1415ProNineContainerScreen =
      '/iphone_14_15_pro_nine_container_screen';

  static const String iphone1415ProTenScreen = '/iphone_14_15_pro_ten_screen';

  static const String iphone1415ProSevenScreen =
      '/iphone_14_15_pro_seven_screen';

  static const String iphone1415ProElevenScreen =
      '/iphone_14_15_pro_eleven_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    iphone1415ProEightScreen: (context) => Iphone1415ProEightScreen(),
    iphone1415ProFourScreen: (context) => Iphone1415ProFourScreen(),
    iphone1415ProFiveScreen: (context) => Iphone1415ProFiveScreen(),
    iphone1415ProNineContainerScreen: (context) =>
        Iphone1415ProNineContainerScreen(),
    iphone1415ProTenScreen: (context) => Iphone1415ProTenScreen(),
    iphone1415ProSevenScreen: (context) => Iphone1415ProSevenScreen(),
    iphone1415ProElevenScreen: (context) => Iphone1415ProElevenScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
