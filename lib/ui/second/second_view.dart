import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:route_nav/ui/second/second_viewmodel.dart';

class SecondView extends StatelessWidget {
  const SecondView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SecondViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: model.doSomething,
        ),
        body: Center(
          child: Text(model.title),
        ),
      ),
      viewModelBuilder: () => SecondViewModel(),
    );
  }
}
