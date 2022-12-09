import 'package:flutter/material.dart';
import 'package:doc_scanner/config/config.dart';



// top app bar for home screen 

class TopBar extends StatelessWidget {
  TopBar({
    super.key,
    required this.drawer,
  });

  Widget drawer;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      constraints: BoxConstraints(maxHeight: screenHeight * 0.15),
      child: Scaffold(
        
        body: Container(
          decoration: BoxDecoration(
            color: Pallete().customBlack,
          ),
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  drawer,
                  Text(
                    "<Space For Logo>",
                    style: TextStyle(color: Pallete().customWhite),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Pallete().customWhite,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.folder,
                        color: Pallete().customYellow,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.qr_code,
                        color: Pallete().customWhite,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        color: Pallete().customWhite,
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}





/*

Row(
      children: [
        IconButton(onPressed: () {

         
        }, icon: Icon(Icons.menu)),
        Text("<Space For Logo>"),
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.folder,
              color: Pallete().customYellow,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.qr_code,
              color: Pallete().customWhite,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Pallete().customWhite,
            ))
      ],
    );

*/



/*
 */ 
