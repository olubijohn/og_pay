import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  SessionManager._();

  static SharedPreferences? preference;
  static String keyIsLoggedIn = "isLoggedIn";

  static Future initSharedPrefrence() async {
    preference = await SharedPreferences.getInstance();
  }

  static void setLoggedIn(value) {
    SessionManager.preference!.setBool(keyIsLoggedIn, value);
  }

  static bool isLoggedIn() {
    return SessionManager.preference!.getBool(keyIsLoggedIn) ?? false;
  }
}