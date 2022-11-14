import 'package:athkar_mobile/SCREEN/Home_Screen.dart';
import 'package:athkar_mobile/compenets/componts.dart';
import 'package:flutter/material.dart';

class start_screen extends StatelessWidget{
  const start_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Image(image: AssetImage('assets/images/athkar3.png')),
              Text('ملاحظه التطبيق يحتاج اتصال ب انترنت',style: TextStyle(color: Colors.white),),
              Button(
                function: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Screen()));
                }
              ),

            ],
          ),
        ),
      ),
    );


  }
  

  
}