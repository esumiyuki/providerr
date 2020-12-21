import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier {
  String sendText = "朝活頑張ろう";

  void changesendText() {
    sendText = "俺が最強だ";
    notifyListeners();
  }
}
