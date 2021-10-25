import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:route_nav/ui/startup/startup_viewmodel.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: model.doSomething,
        ),
        body: Center(
            child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
          child: Text(model.title),
        )),
      ),
      viewModelBuilder: () => StartUpViewModel(),
    );
  }
}
