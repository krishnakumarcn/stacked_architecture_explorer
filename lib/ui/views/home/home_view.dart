import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  final String title;

  const HomeView({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      builder: (context, HomeViewModel model, child) {
        return  Hero(
            tag: "1",
                  child: Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              elevation: 0,
            ),
            body: Container(
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Text("${model.title} ${model.counter}"),
              ),
            ),
            // floatingActionButton: FloatingActionButton(
            //   heroTag: "another",
            //   onPressed: model.updateCounter,
            // ),
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel("title"),
    );
  }
}
