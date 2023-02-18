import 'package:shared_preferences/shared_preferences.dart';

class CounterDataSource {
  SharedPreferences prefs;
  CounterDataSource(this.prefs);

  int get counter => prefs.getInt("counter")??0;
  Future<bool> incrementCounter() async{
    return prefs.setInt("counter", counter + 1);
  }
  Future<bool> decrementCounter() async{
    return prefs.setInt("counter", counter - 1);
  }
}