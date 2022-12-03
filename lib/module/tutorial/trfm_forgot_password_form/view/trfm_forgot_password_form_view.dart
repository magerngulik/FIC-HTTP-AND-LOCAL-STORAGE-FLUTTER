import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TrfmForgotPasswordFormView extends StatefulWidget {
  const TrfmForgotPasswordFormView({Key? key}) : super(key: key);

  Widget build(context, TrfmForgotPasswordFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrfmForgotPasswordForm"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              QImagePicker(
                label: "label",
                onChanged: (p0) {},
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TrfmForgotPasswordFormView> createState() =>
      TrfmForgotPasswordFormController();
}
