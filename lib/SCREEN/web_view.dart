import 'package:athkar_mobile/MODEL/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../MODEL/webview_model.dart';

class web_veiw extends StatelessWidget {
 final  ModelWeb ?data;
 web_veiw({this.data
 });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 2,
        backgroundColor: Colors.grey,
        title: Text(
          'أذكار',
          style: TextStyle(fontSize: 35),
        ),
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: data?.url,



      ),
    );
  }


}



