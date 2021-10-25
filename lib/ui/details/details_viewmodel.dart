import 'package:stacked/stacked.dart';

class DetailsViewModel extends BaseViewModel {
  String title = '';
  void doSomething() {
    title = "new Update";
    notifyListeners();
  }
}
