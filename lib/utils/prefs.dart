import 'package:shared_preferences/shared_preferences.dart';
import '../model/user.dart';

enum PrefKeys { id, name, email, password, token, loggedIn, code }

class SharedPrefController {
  SharedPrefController._();

  late SharedPreferences _sharedPreferences;

  static SharedPrefController? _instance;

  factory SharedPrefController() {
    return _instance ??= SharedPrefController._();
  }

  Future<void> initPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> save({required User user}) async {
    await _sharedPreferences.setBool('logged_in', true);
    // await _sharedPreferences.setString('id', user.id);
    await _sharedPreferences.setString('email', user.email);
    await _sharedPreferences.setString('password_confirmation', user.password);
    await _sharedPreferences.setString('name', user.name);
  }

  Future<void> getToken({required String token}) async {
    await _sharedPreferences.setBool('logged_in', true);
    await _sharedPreferences.setString('token', 'Bearer ${token}');
  }

  bool get LoggedIn => _sharedPreferences.getBool('logged_in') ?? false;
  T? getValueFor<T>(String key) {
    if (_sharedPreferences.containsKey(key)) {
      return _sharedPreferences.get(key) as T;
    }
    return null;
  }

  Future<bool> clear() {
    return _sharedPreferences.clear();
  }
}
