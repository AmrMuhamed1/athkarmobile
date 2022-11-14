import 'package:athkar_mobile/States/States.dart';
import 'package:athkar_mobile/cubit/cubit.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<athkar_cubit, states>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
              drawer: Drawer(
                backgroundColor: Colors.black54,
                width: 240,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.add_call,color: Colors.greenAccent,),
                            SizedBox(width: 5,),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Contact Us',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                )),

                          ],
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            Icon(Icons.email,color: Colors.yellowAccent,),
                            SizedBox(width: 5,),
                            TextButton(
                                onPressed: () {

                                },
                                child: Text(
                                  'Email Address',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                )),

                          ],
                        ),
                        SizedBox(height: 30,),

                        Row(
                          children: [
                            Icon(Icons.color_lens_outlined,color: Colors.purpleAccent,),
                            SizedBox(width: 5,),
                            TextButton(
                                onPressed: () {

                                },
                                child: Text(
                                  'Dark Mode',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                )),

                          ],
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            Icon(Icons.info,color: Colors.redAccent,),
                            SizedBox(width: 5,),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Help',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                )),

                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              appBar: AppBar(
                // elevation: 2,
                // backgroundColor: Colors.grey,
                title: Text(
                  'أذكار',
                  style: TextStyle(fontSize: 35),
                ),
                centerTitle: true,
              ),
              body: athkar_cubit
                  .get(context)
                  .Screens[athkar_cubit.get(context).currentindex],
              bottomNavigationBar: CurvedNavigationBar(
                color: Colors.black87,
                backgroundColor: Colors.white,
                index: athkar_cubit.get(context).currentindex,
                onTap: (index) =>
                    athkar_cubit.get(context).Changebottom(index),
                items: [
                  Icon(Icons.article,
                      color: athkar_cubit.get(context).currentindex == 0
                          ? Colors.yellowAccent
                          : Colors.grey),
                  Icon(Icons.menu_book_sharp,
                      color: athkar_cubit.get(context).currentindex == 1
                          ? Colors.yellowAccent
                          : Colors.grey),
                ],
              ));
        });
  }
}
