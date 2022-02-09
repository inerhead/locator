import 'package:flutter/cupertino.dart';

class UIProvider extends ChangeNotifier {
  int _currentPage = 0;

  int get currentPage {
    return this._currentPage;
  }

  set currentPage(int index) {
    this._currentPage = index;
    notifyListeners();
  }
}
