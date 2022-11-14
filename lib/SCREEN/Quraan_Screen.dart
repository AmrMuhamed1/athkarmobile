import 'package:athkar_mobile/CONTROLLERS/Quraan_Controller.dart';
import 'package:athkar_mobile/CONTROLLERS/controller.dart';
import 'package:athkar_mobile/SCREEN/web_view.dart';
import 'package:athkar_mobile/WIDGETS/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../MODEL/webview_model.dart';

class Quraan extends StatelessWidget {
  ModelWeb? data;

  Quraan({this.data});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) =>
            QuraanCard(Quran_Controller.getModel(index), context),
        separatorBuilder: (context, index) => SizedBox(
              height: 10,
            ),
        itemCount: Quran_Controller.dataLength);
  }
}
