import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateNew extends StatelessWidget {
  CreateNew(
      {super.key,
      required this.color,
      required this.height,
      required this.width});

  Color color;
  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            bottom: 5.0,
          ),
          child: Wrap(
            alignment: WrapAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_enhance,
                    size: width*0.25,
                    color: Colors.purple,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.photo_sharp,
                    size: width*0.25,
                    color: Colors.purple,
                  ))
            ],
          ),
        ));
  }
}
