
import 'package:athkar_mobile/MODEL/model.dart';
import 'package:athkar_mobile/MODEL/webview_model.dart';
import 'package:athkar_mobile/SCREEN/web_view.dart';
import 'package:athkar_mobile/cubit/cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../CONTROLLERS/controller.dart';
import '../WIDGETS/widgets.dart';

class Athkar extends StatelessWidget {
  final Model? model;

  const Athkar({Key? Key, this.model,}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) =>
                    AthkarCard(Controller.getModel(index),context,),
                separatorBuilder: (context, index) => SizedBox(
                      height: 0,
                    ),
                itemCount: Controller.dataLength)));
  }
}


