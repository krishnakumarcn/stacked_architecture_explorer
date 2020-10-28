import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_architecture_sample/ui/views/partial_builds/partial_build_viewmodel.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class PartialBuildView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("MainView rebuild");
    return ViewModelBuilder.nonReactive(
      builder:
          (BuildContext context, PartialBuildViewModel model, Widget child) {
        return Scaffold(
            body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 120),
              _StringForm(),
              _Title(),
            ],
          ),
        ));
      },
      viewModelBuilder: () => PartialBuildViewModel(),
    );
  }
}

class _StringForm extends HookViewModelWidget<PartialBuildViewModel> {
  _StringForm({Key key}) : super(key: key, reactive: false);
  @override
  Widget buildViewModelWidget(
      BuildContext context, PartialBuildViewModel model) {
    print("Form rebuild");
    var textController = useTextEditingController();
    return TextField(
      controller: textController,
      onChanged: model.updateString,
    );
  }
}

class _Title extends ViewModelWidget<PartialBuildViewModel> {
  @override
  Widget build(BuildContext context, PartialBuildViewModel model) {
    print("Title rebuild");
    return Text(
      model.title ?? "",
      style: Theme.of(context).textTheme.headline1,
    );
  }
}
