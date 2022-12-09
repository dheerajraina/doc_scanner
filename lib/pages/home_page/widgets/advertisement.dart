import 'package:flutter/material.dart';

class Advertisement extends StatelessWidget {
  Advertisement(
      {super.key,
      required this.bgColor,
      required this.height,
      required this.width});

  Color bgColor;
  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: bgColor,

      child: Center(
        child: RichText(
          text: TextSpan(
            text: "<Space for Advertisement>",
            style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.black,fontStyle: FontStyle.italic),
            )),
      )
    );
  }
}
