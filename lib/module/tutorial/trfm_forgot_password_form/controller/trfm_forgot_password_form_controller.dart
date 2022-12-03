import 'package:example/core.dart';
import 'package:flutter/material.dart';

class TrfmForgotPasswordFormController extends State<TrfmForgotPasswordFormView>
    implements MvcController {
  static late TrfmForgotPasswordFormController instance;
  late TrfmForgotPasswordFormView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
