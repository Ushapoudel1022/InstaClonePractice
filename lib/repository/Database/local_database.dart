import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferences {
  AppSharedPreferences() {
    init();
  }
  SharedPreferences? _prefs;

  Future<void> init() async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();
  }

  Future<void> saveUserData({required String email, required String id}) async {
    await _prefs?.setString("email", email);
    await _prefs?.setString("user_id", id);

    // List<String?> getUserData() {
    //   return [_prefs?.getString("email"), _prefs?.getString("user_id")];
    // }
  }
  // Obtain shared preferences.

// // Save an integer value to 'counter' key.
// await prefs.setInt('counter', 10);
// // Save an boolean value to 'repeat' key.
// await prefs.setBool('repeat', true);
// // Save an double value to 'decimal' key.
// await prefs.setDouble('decimal', 1.5);
// // Save an String value to 'action' key.
// await prefs.setString('action', 'Start');
// // Save an list of strings to 'items' key.
// await prefs.setStringList('items', <String>['Earth', 'Moon', 'Sun']);
}
