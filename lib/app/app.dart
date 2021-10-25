import 'package:route_nav/ui/second/second_view.dart';
import 'package:route_nav/ui/startup/startup_view.dart';
import 'package:route_nav/ui/details/details_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: StartUpView, initial: true),
  CupertinoRoute(page: SecondView),
  CupertinoRoute(page: DetailsView),
], dependencies: [
  LazySingleton(classType: NavigationService),
])
class AppSetup {
  /**  Serves no purpose besides having an annotation attached to it  */
}
