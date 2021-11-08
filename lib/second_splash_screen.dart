import 'package:esusu_app/page_selector.dart';
import 'package:flutter/material.dart';

class SecondSplashScreen extends StatefulWidget {
  const SecondSplashScreen({Key? key}) : super(key: key);

  @override
  _SecondSplashScreenState createState() => _SecondSplashScreenState();
}

class _SecondSplashScreenState extends State<SecondSplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
        Duration(seconds: 5),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => SimplePageSelector())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Image.asset("assets/images/esusu_pay_logo.png"),
        ),
      ),
    );
  }
}
