import 'package:flutter/material.dart';

import '../constant/const.dart';
import '../constant/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key,required this.onNavitemtap});
  final Function(int) onNavitemtap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(250, 77, 30, 1),
      child: ListView(
        children: [
          Align(
            alignment:Alignment.centerLeft,
            child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                  bottom: 20,
                ),
                child: IconButton(onPressed: (){
                  Navigator.of(context).pop();
                }, icon: const Icon(Icons.close))),
          ),
          for(int i=0;i<navIcons.length;i++)
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              titleTextStyle: manu_button_Textstyle,
              onTap: (){
                onNavitemtap(i);
              },
              leading: Icon(navIcons[i]),
              title: Text(NavTittle[i]),
            ),
        ],
      ),
    );
  }
}
