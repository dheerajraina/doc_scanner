import 'package:doc_scanner/controllers/home_page.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomNavBar extends StatelessWidget {
  CustomNavBar({super.key, required this.height, required this.optionColor});
  double height;
  Color optionColor;
  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomePageState>();

    return Container(
      // color: Colors.amber,
      constraints: BoxConstraints(maxHeight: height),
      child: DefaultTabController(
          initialIndex: homeController.selectedPage.value,
          length: 4,
          child: Column(
            children: [
              TabBar(
                isScrollable: false,
                tabs: <Widget>[
                  Tab(
                    child: Text(
                      "All docs",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: optionColor, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "My Bill",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: optionColor, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "ID Card",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: optionColor, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Academic Doc",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: optionColor, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),


               Expanded(
                child: TabBarView
                  
                  (children: [
                    Center(
                      child: Text("All Docs Tab"),
                    ),
                    Center(
                      child: Text("My Bill Tab"),
                    ),
                    Center(
                      child: Text("Id Card Tab"),
                    ),
                    Center(
                      child: Text("Academic Doc Tab"),
                    ),
                  ]),
                ),
              
             
            ],
          )),
    );
  }
}
