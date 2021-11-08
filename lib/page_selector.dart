import 'package:esusu_app/all_navs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SimplePageSelector extends StatefulWidget {
  SimplePageSelector({Key? Key}) : super(key: Key);
  _SimplePageSelectorState createState() => _SimplePageSelectorState();
}

class _SimplePageSelectorState extends State<SimplePageSelector> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: DefaultTabController(
            length: 4,
            child: Builder(
              builder: (BuildContext context) => Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        child: TabBarView(
                          children: <Widget>[
                            Container(
                              child: Center(
                                child: Column(children: [
                                  Image.asset("assets/images/save_money1.jpg",
                                      width: double.infinity, height: 380.8),
                                  SizedBox(height: 40),

                                  Text("SAVE SMART WITH esusuPAY",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.mulish(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800)),

                                  SizedBox(height: 10),

                                  Padding(padding: EdgeInsets.all(8), child:  Text("A Digital and Reliable way to Save.",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.mulish(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400)),),


                                  SizedBox(height: 60),
                                  TabPageSelector(
                                    indicatorSize: 7,
                                    selectedColor: Colors.blue,
                                  ),
                                ]),
                              ),
                            ),
                            Column(children: [
                              Image.asset("assets/images/loan.jpg",
                                  width: double.infinity, height: 380.8),
                              SizedBox(height: 40),
                              Text("ACCESS QUICK LOANS",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.mulish(
                                      fontSize: 20, fontWeight: FontWeight.w800)),
                              SizedBox(height: 10),

                              Padding(padding: EdgeInsets.all(8), child: Text(
                                  "Save regularly to access DOUBLE value as Loan.",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.mulish(
                                      fontSize: 18, fontWeight: FontWeight.w400)),),

                              SizedBox(height: 60),
                              TabPageSelector(
                                indicatorSize: 7,
                                selectedColor: Colors.blue,
                              ),
                            ]),
                            Column(children: [
                              Image.asset("assets/images/save_money2.jpg",
                                  width: double.infinity, height: 380.8),
                              SizedBox(height: 40),
                              Text("SAVE WITH esusuPAY AGENT",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.mulish(
                                      fontSize: 20, fontWeight: FontWeight.w800)),
                              SizedBox(height: 10),
                              Padding(padding: EdgeInsets.all(8), child: Text(
                                  "Save daily with our regular agents in your neighbourhood.",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.mulish(
                                      fontSize: 18, fontWeight: FontWeight.w400)),),

                              SizedBox(height: 60),
                              TabPageSelector(
                                indicatorSize: 7,
                                selectedColor: Colors.blue,
                              ),
                            ]),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/digital1.jpg",
                                      width: double.infinity, height: 380.8),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text("ACCESS DIGITAL FINANCIAL SERVICES",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.mulish(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800)),
                                  SizedBox(height: 10),
                                  Padding(padding: EdgeInsets.all(5), child: Text(
                                      "Buy Airtime / Data, Pay Bills, Transfer Money, etc",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.mulish(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400)),),

                                  SizedBox(height: 50),
                                  SizedBox(height: 60),
                                  TabPageSelector(
                                    indicatorSize: 7,
                                    selectedColor: Colors.blue,
                                  ),
                                  Expanded(
                                      child: SizedBox(height: 20,)),
                                      InkWell(
                                        child: Container(
                                            width: double.infinity,
                                            height: 60,
                                            decoration:
                                                BoxDecoration(color: Colors.orange),
                                            child: Center(
                                              child: Text("Get started",
                                                  style: GoogleFonts.mulish(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w700)),
                                            )),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      WebIndexPage()));
                                        }),

                                ]),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//Padding(padding: EdgeInsets.all(8), child: ,),