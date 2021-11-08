import 'package:esusu_app/widget.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:url_launcher/url_launcher.dart';

import 'esusu_web_page.dart';
import 'info_page.dart';
class WebIndexPage extends StatefulWidget {
  const WebIndexPage({Key? key}) : super(key: key);

  @override
  _WebIndexPageState createState() => _WebIndexPageState();
}

class _WebIndexPageState extends State<WebIndexPage> {
  List<Widget> pages = [EsusuWebPage(), EsusuWebPage(), InfoPage(),EmailPage(),];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_back_ios_new_rounded), label: "Backward"),
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_forward_ios_rounded), label: " Forward"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: "Contact us")
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
      ),
      body: Container(
        child: pages.elementAt(_selectedIndex),
      ),
    );
  }
}

class EmailPage extends StatefulWidget {
  const EmailPage({Key? key}) : super(key: key);

  @override
  _EmailPageState createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            children: [
              SizedBox(height: 130,),
              Container(
                child: Center(
                  child: Container(height: 170, width: 170, child: Image.asset("assets/images/esusu_pay_gif.gif")),
                ),
              ),

              Expanded(child: SizedBox(height: 60,)),
              Material(
                //borderRadius: BorderRadius.circular(70),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                elevation: 30,
                child: Container(width: double.infinity, decoration: BoxDecoration(color: Colors.white,), child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 10,),
                        TextOf('How can we assist you', 12, FontWeight.w400, Colors.grey),
                      ],
                    ),
                    SizedBox(height: 30),
                    InkWell(
                      onTap: (){
                        _launchEmail();
                      },
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Container(height: 40, width: 40, child: Image.asset("assets/images/email.png")),
                          SizedBox(width: 10,),
                          TextOf('Send mail', 17, FontWeight.w500, Colors.black),

                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: (){
                        _makePhoneCall();
                      },
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Container(height: 40, width: 40, child: Image.asset("assets/images/phone.png")),
                          SizedBox(width: 10,),
                          TextOf('Phone call', 17, FontWeight.w500, Colors.black),

                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: (){
                        _smsMessage();
                      },
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Container(height: 40, width: 40, child: Image.asset("assets/images/conversation.png")),
                          SizedBox(width: 10,),
                          TextOf('SMS', 17, FontWeight.w500, Colors.black),

                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: (){
                        _sendWhatsAppMess(phone: '+234 8139200693', message: "Hi there, I'm an esusuApp user");
                      },
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Container(height: 40, width: 40, child: Image.asset("assets/images/whatsapp.png")),
                          SizedBox(width: 10,),
                          TextOf('WhatsApp', 17, FontWeight.w500, Colors.black),

                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),),
              )
            ])
    );
  }

  void  _launchEmail() async {
    await launch(
        "mailto:admin@esusupay.net?subject=AS AN esusuApp user");
  }
}
  void _makePhoneCall() async {
    await launch('tel: +234 8139200693');
    }

void _smsMessage() async {
  await launch('sms: +234 8139200693 ');
}

void _sendWhatsAppMess({@required phone, @required  message}) async{
  String url = 'whatsapp://send?phone=$phone&text=$message';
  await canLaunch(url)? launch(url): print('Can not openwhatsapp');
}
// class WebPage extends StatelessWidget {
//   WebPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return WebviewScaffold(
//       url: "https://esusupay.net",
//       javascriptChannels: <JavascriptChannel>{},
//       mediaPlaybackRequiresUserGesture: false,
//       appBar: AppBar(title: Text("esusuPAY")),
//       withZoom: true,
//       withLocalStorage: true,
//       initialChild: CircularProgressIndicator(),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//               icon: Icon(Icons.arrow_back_ios_new_rounded), label: "Backward"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.arrow_forward_ios_rounded), label: " Forward"),
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.mail), label: "Mail")
//         ],
//       ),
//     );
//   }
// }

