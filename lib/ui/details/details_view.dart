import 'package:flutter/material.dart';

/* 
***  This example is for using argument

When you navigate to the DetailsView using the NavigationService then 
you can pass in the DetailsViewArguments class as your arguments.

_navigationService.navigateTo(
  Routes.detailsView,
  arguments: DetailsViewArguments(name: 'FilledStacks'),
);

These arguments can be passed into any of the navigation calls that takes in the route name. 
They will be generated for any view that has arguments in it and for all types, including custom classes created in your code.
Note: When your view arguments change you have to run the code generation command again.
That reduces the amount of maintenance code around passing parameters around the views when navigating.
*/

class DetailsView extends StatelessWidget {
  final String? name;

  const DetailsView({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(name!),
    );
  }
}
