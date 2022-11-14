import 'package:athkar_mobile/CONTROLLERS/Quraan_Controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../MODEL/webview_model.dart';
import '../SCREEN/web_view.dart';

Widget AthkarCard(model, context,) => SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(right: 10, left: 10, bottom: 2, top: 12),
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(25)),
              width: double.infinity,
              height: 100,
              child: InkWell(
                onTap: () {
                  ModelWeb modelweb = ModelWeb(url: model.url, title: "");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => web_veiw(
                                data: modelweb,
                              )));
                },
                radius: 30,
                child: Card(
                    elevation: 30,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: Colors.grey,
                    child: Image(
                      image: AssetImage(model!.image!),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );

Widget QuraanCard(model, context) => SingleChildScrollView(
      child: Column(
        children: [

          Padding(
            padding:
                const EdgeInsets.only(right: 10, left: 10, bottom: 2, top: 12),
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(25)),
              width: double.infinity,
              height: 100,
              child: InkWell(
                onTap: () {
                  ModelWeb modelweb = ModelWeb(url: model.url, title: "");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => web_veiw(
                                data: modelweb,
                              )));
                },
                radius: 30,
                child: Card(
                    elevation: 30,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: Colors.grey,
                    child: Image(
                      image: AssetImage(model!.image!),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
