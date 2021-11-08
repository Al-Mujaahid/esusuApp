import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class EsusuWebPage extends StatefulWidget {
  const EsusuWebPage({Key? key}) : super(key: key);

  @override
  _EsusuWebPageState createState() => _EsusuWebPageState();
}

class _EsusuWebPageState extends State<EsusuWebPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: WebviewScaffold(url: 'https://esusupay.net', initialChild: SpinKitFadingCube(color: Colors.blue,
        size: 50.0,),),
    ),);
  }
}
