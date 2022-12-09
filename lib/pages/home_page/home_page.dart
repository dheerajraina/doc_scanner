import 'package:doc_scanner/config/pallete.dart';
import 'package:flutter/material.dart';
import './widgets/widgets.dart';
import 'package:doc_scanner/controllers/home_page.controller.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final homeStateController=Get.put(HomePageState());

  final String title;

  GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          key: _key,
          drawer: customDrawer(Pallete().customBlack,screenWidth*0.1,context,Pallete().customWhite,Pallete().customRed),
          body: Container(
              constraints: BoxConstraints(maxHeight: screenHeight),
              // color: Colors.amber,
              child: Column(
                children: [
                  TopBar(
                    drawer: drawerButton(
                        _key, screenWidth * 0.1, Pallete().customWhite),
                  ),
                  Container(
                    height: screenHeight * 0.8,
                  )
                ],
              ))),
    );
  }
}





/*

appBar: PreferredSize(
          preferredSize: Size(screenWidth, screenHeight * 0.15),
          child: AppBar(
            flexibleSpace: Container(
              color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      TopBar()
                    ],
                  ),
                ],
              ),
            ),
            backgroundColor: Pallete().customBlack,
            actions: [
              // TopBar()
              ],
          ),
        ),
        */



/*

AppBar(
          backgroundColor: Pallete().customBlack,
          actions: [TopBar()],
        ),
*/
