import 'imports.dart';

class AppConsts {
  static const String appName = 'ToDoFusion';
  static const double maxWidth = 750;
  static bool isIphone = Platform.isIOS;
}

class AppControllers {
  static TextEditingController categoryNameController = TextEditingController();
  static TextEditingController usernameLogin = TextEditingController();
  static TextEditingController passwordLogin = TextEditingController();
}

class BottomNavBarConsts {
  static const String bottomNavBarLabel1 = "Home";
  static const String bottomNavBarLabel2 = "Calender";
  static const String bottomNavBarLabel3 = "Focus";
  static const String bottomNavBarLabel4 = "Profile";
  static const Icon bottomNavBarIcon1 = Icon(Icons.home_filled);
  static const Icon bottomNavBarIcon2 = Icon(Icons.calendar_month_rounded);
  static const Icon bottomNavBarIcon3 = Icon(Icons.access_time);
  static const Icon bottomNavBarIcon4 = Icon(Icons.person);
}
