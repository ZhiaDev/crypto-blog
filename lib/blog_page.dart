import 'package:flutter/material.dart';
import 'package:flutter_navigation_app/custon_widgets/post_widget.dart';
import 'package:iconly/iconly.dart';

class BlogPage extends StatelessWidget {
  BlogPage({Key? key}) : super(key: key);

  final listBlogWidgets = [
    getBlogPost(
        imageAddr: 'btc.jpg', name: 'بیتکوین', sell: '۳۱٫۷۲۶', buy: '۲۹٫۸۶۲'),
    addDivider(),
    getBlogPost(
        imageAddr: 'eth.png', name: 'اتریوم', sell: '۲٫۰۹۰', buy: '۲٫۰۲۲'),
    addDivider(),
    getBlogPost(
        imageAddr: 'doge.png', name: 'دوج‌کوین', sell: '۰٬۰۹۰۲', buy: '۰٬۰۸۷۸'),
    addDivider(),
    getBlogPost(
        imageAddr: 'xmr.png', name: 'مونرو', sell: '۲۰۳٬۹', buy: '۱۶۲٬۲'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...listBlogWidgets, // Speread Operator
                SizedBox(height: 40),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Color(0xFFFFFFFF),
                    backgroundColor: Colors.red,
                    minimumSize: Size(200.0, 40.0),
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'خروج از حساب',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10)
              ],
            ),
          ),
        ),
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
          'اخبار و سیگنال ارزدیجیتال',
          style: TextStyle(color: Color(0xFF181C1E)),
        ),
        SizedBox(width: 13),
        Icon(IconlyBold.activity, color: Color(0xFF181C1E)),
      ],
    ),
  );
}

Widget addDivider() {
  return Container(
    width: 150,
    child: Divider(
      color: Color(0xFF181C1E),
      thickness: 0.5,
    ),
  );
}
