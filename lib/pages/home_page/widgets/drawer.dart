import 'package:doc_scanner/controllers/home_page.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget customDrawer(Color headerColor, double avatarRadius,
    BuildContext context, Color headerFontColor, Color iconColor) {
  final homeController = Get.find<HomePageState>();
  return Drawer(
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: headerColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                minRadius: avatarRadius,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: homeController.isSignedIn.value
                        ? "Already Signed In\n\n"
                        : "Sign In(Cloud)\n\n",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: headerFontColor)),
                TextSpan(
                    text: "Sign in to sync documents",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: headerFontColor))
              ])),
            ],
          ),
        ),
        Visibility(
          visible: !homeController.isPremium.value,
          child: getPremium(headerColor, headerFontColor,
              MediaQuery.of(context).size.height * 0.1, context),
        ),
        drawerOptions(iconColor, Icons.favorite, 'Favorite', context),
        drawerOptions(iconColor, Icons.bookmark, 'Manage Tags', context),
        drawerOptions(iconColor, Icons.delete, 'Trash', context),
        drawerOptions(iconColor, Icons.build, 'PDF Tools', context),
        drawerOptions(iconColor, Icons.edit, 'Signature', context),
        drawerOptions(iconColor, Icons.qr_code_scanner, 'Qr Scanner', context),
        drawerOptions(iconColor, Icons.qr_code, 'Qr Generator', context),
        drawerOptions(iconColor, Icons.settings, 'Settings', context),
        Divider(thickness: 4),
        drawerOptions(iconColor, Icons.apple, 'Doc Scanner Ios', context),
        drawerOptions(
            iconColor, Icons.share, 'Share with your friends', context),
        drawerOptions(iconColor, Icons.question_answer, 'FAQ', context),
        drawerOptions(iconColor, Icons.help, 'Help', context),
        drawerOptions(iconColor, Icons.mail, 'Contact Us', context),
        Divider(thickness: 4),

        SizedBox(height: 20,)
      ],
    ),
  );
}


// to display advertisement to switch to premium plan

Widget getPremium(
    Color color, Color textColor, double height, BuildContext context) {
  return Container(
    color: Colors.red,
    // height: height,

    child: ListTile(
        leading: Icon(Icons.sunny),
        title: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "Upgrage to Premium\n",
                style: Theme.of(context).textTheme.bodyLarge),
            TextSpan(
                text: "Unlock complete features through premium",
                style: Theme.of(context).textTheme.bodySmall),
          ]),
        ),
        trailing:IconButton(onPressed: (){}, icon:  Icon(Icons.arrow_forward_ios)),
        ),
  );
}



// widget to layout options of the drawer

Widget drawerOptions(iconColor, IconData icon, name, context) {
  var radius = MediaQuery.of(context).size.width * 0.04;

  return ListTile(
    leading: CircleAvatar(
      radius: radius,
      backgroundColor: iconColor,
      child: Icon(icon, size: radius),
    ),
    title: Text(name),
    onTap: () {},
  );
}

// button to open the drawer

Widget drawerButton(GlobalKey<ScaffoldState> _key, width, color) {
  return IconButton(
      onPressed: () {
        _key.currentState!.openDrawer();
      },
      icon: Icon(
        Icons.menu,
        color: color,
        size: width,
      ));
}
