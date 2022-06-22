import 'package:flutterexpension/presentation/homepage_screen/homepage_screen.dart';
import 'package:flutterexpension/presentation/homepage_screen/binding/homepage_binding.dart';
import 'package:flutterexpension/presentation/splash_screen/splash_screen.dart';
import 'package:flutterexpension/presentation/splash_screen/binding/splash_binding.dart';
import 'package:flutterexpension/presentation/add_expense_screen/add_expense_screen.dart';
import 'package:flutterexpension/presentation/add_expense_screen/binding/add_expense_binding.dart';
import 'package:flutterexpension/presentation/profile_screen/profile_screen.dart';
import 'package:flutterexpension/presentation/profile_screen/binding/profile_binding.dart';
import 'package:flutterexpension/presentation/expense_transaction_details_screen/expense_transaction_details_screen.dart';
import 'package:flutterexpension/presentation/expense_transaction_details_screen/binding/expense_transaction_details_binding.dart';
import 'package:flutterexpension/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:flutterexpension/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String homepageScreen = '/homepage_screen';

  static String splashScreen = '/splash_screen';

  static String addExpenseScreen = '/add_expense_screen';

  static String profileScreen = '/profile_screen';

  static String expenseTransactionDetailsScreen =
      '/expense_transaction_details_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homepageScreen,
      page: () => HomepageScreen(),
      bindings: [
        HomepageBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: addExpenseScreen,
      page: () => AddExpenseScreen(),
      bindings: [
        AddExpenseBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: expenseTransactionDetailsScreen,
      page: () => ExpenseTransactionDetailsScreen(),
      bindings: [
        ExpenseTransactionDetailsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
