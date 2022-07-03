import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _getAppBar(),
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Center(
          child: Text(
            '!ریکاوری رمز عبور\n (بعدا ساخته میشود)',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
