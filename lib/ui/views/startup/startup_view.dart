import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_architecture_sample/ui/views/startup/startup_viewmodel.dart';

class StartupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      builder: (context, StartupViewModel model, child) => Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,elevation: 0,),
        floatingActionButton: FloatingActionButton(heroTag:"1",onPressed: model.navigateToHome,),
        body: Center(
          child: Container(
            color: Colors.white,
            child: Text("Begin"),
          ),
        ),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}
