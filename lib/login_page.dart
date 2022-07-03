import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'blog_page.dart';
import 'frogot_password.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Image(
                image: AssetImage('images/hello.png'),
              ),
              SizedBox(height: 120),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(280.0, 40.0),
                      side: BorderSide(
                        width: 1.5,
                        color: Color(0xFF10D35E),
                      ),
                      primary: Color(0xFF10D35E),
                      shape: StadiumBorder(),
                    ),
                    onPressed: () => navigateTo(context, BlogPage()),
                    child: Text(
                      'ورود به حساب',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Color(0xFFFFFFFF),
                      backgroundColor: Color(0xFF10D35E),
                      minimumSize: Size(280.0, 40.0),
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {},
                    child: Text(
                      'ثبت نام',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Color(0xFF181C1E),
                      minimumSize: Size(110.0, 40.0),
                      shape: StadiumBorder(),
                    ),
                    onPressed: () => navigateTo(context, ForgotPassword()),
                    child: Text(
                      'فراموشی رمز عبور؟',
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void navigateTo(BuildContext context, page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }
}

PreferredSizeWidget _getAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    elevation: 0,
    backgroundColor: Color(0xFF10D35E),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'خـوش آمـدید',
          style: TextStyle(color: Color(0xFF181C1E)),
        ),
        SizedBox(
          width: 14,
        ),
        Icon(
          IconlyBold.login,
          color: Color(0xFF181C1E),
        ),
      ],
    ),
  );
}
