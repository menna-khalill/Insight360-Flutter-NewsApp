import 'package:flutter/material.dart';

import 'circle_icon.dart';
class CustomAppBarDetails extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 50,
      backgroundColor: Colors.white,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: CircleIcon(icon: Icons.arrow_back_ios_new,),
        ),
      ),
      title: Text('News Detail',
        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CircleIcon(icon: Icons.save,),
        )
      ],
    );
  }

  @override

  Size get preferredSize => Size.fromHeight(56);
}
