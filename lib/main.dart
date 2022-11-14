import 'package:athkar_mobile/SCREEN/Start_screen.dart';
import 'package:athkar_mobile/States/States.dart';
import 'package:athkar_mobile/cubit/cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Styles/Themes.dart';

Future <void> main()async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => athkar_cubit(),
      child: BlocConsumer<athkar_cubit,states>(
        listener:(context,state){} ,
        builder: (context,state){
          return MaterialApp(
            // title: 'athkar',
            debugShowCheckedModeBanner: false,
            theme: Light,

            home: start_screen(),
          );
        },
      )
    );
  }
}
