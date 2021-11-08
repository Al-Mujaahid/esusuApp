import 'package:esusu_app/second_splash_screen.dart';
import 'package:esusu_app/splash_shreen.dart';
import 'package:esusu_app/widget.dart';
import 'package:flutter/material.dart';
class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 150),
              child: Container(
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Image.asset(
                        "assets/images/esusu_pay_gif.gif",
                        width: 200,
                      ),
                      SizedBox(height: 30),
                      InkWell(
                          child: Container(
                              width: 250,
                              height: 50,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue, width: 1),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10))),
                              child: Center(
                                child: TextOf('Home', 20, FontWeight.w700, Colors.blue)

                                ),
                              ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SplashScreen()));
                          }),
                      SizedBox(
                        height: 30,
                      ),
                      TextOf("Powered By Esusu Africa", 14, FontWeight.w600, Colors.blue
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
