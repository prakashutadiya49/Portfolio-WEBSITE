import 'package:flutter/material.dart';
import 'package:mypotfolio/constant/nav_items.dart';
import 'site_logo.dart';

import '../constant/const.dart';

class navigationbar extends StatelessWidget {
  const navigationbar({super.key, required this.onNavManuTap,});
  final Function(int) onNavManuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color:Color.fromRGBO(250, 77, 30, 1),
      // navbar items
      child: Row(
        children: [
          SiteLogo(onTap: (){}),
          const Spacer(),
          for (int i = 0; i < NavTittle.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  // gradient: LinearGradient(colors: [
                  //   Colors.redAccent,
                  //   Colors.yellow,
                  // ],),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextButton(
                    onPressed: () {
                      onNavManuTap(i);
                    },
                    child: Text(NavTittle[i], style: nav_button_Textstyle),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
