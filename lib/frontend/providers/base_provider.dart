import 'package:flutter/cupertino.dart';

class BaseProvider extends ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;

  set setLoading(bool loading) {
    _loading = loading;
    notifyListeners();
  }
}
