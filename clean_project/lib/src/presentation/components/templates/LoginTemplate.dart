import 'package:clean_project/src/presentation/components/atoms/CTitle.dart';
import 'package:clean_project/src/presentation/components/organisms/CProgressModal.dart';
import 'package:clean_project/src/presentation/components/organisms/LoginForm.dart';
import 'package:flutter/material.dart';

class LoginTemplate extends StatelessWidget {
  final void Function(String email, String password)? onLogin;
  final void Function()? onForgetPassword;
  final bool? inAsyncCall;

  LoginTemplate(
      {@required this.onLogin,
      @required this.onForgetPassword,
      this.inAsyncCall = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              const CTitle(text: "Hello!"),
              SizedBox(
                height: 20,
              ),
              LoginForm(
                onLogin: this.onLogin,
                onForgetPassword: this.onForgetPassword,
              ),
            ],
          ),
        ),
        this.inAsyncCall! ? CProgressModal() : SizedBox()
      ],
    )));
  }
}
