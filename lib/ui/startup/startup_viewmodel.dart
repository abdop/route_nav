import 'package:route_nav/app/app.locator.dart';
import 'package:route_nav/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartUpViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  String title = 'StartUp';

  void doSomething() {
    _navigationService.navigateTo(Routes.secondView);
  }
}
