import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  String _title = "Home View";
  String get title => _title;
  int _counter = 0;
  int get counter => _counter;

  HomeViewModel(final String title){
    this._title = title;
  }

  void updateCounter(){
    _counter++;
    notifyListeners();
  }
}
