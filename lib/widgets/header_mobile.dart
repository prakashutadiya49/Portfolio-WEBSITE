import 'package:flutter/material.dart'
    '';

import 'site_logo.dart';
class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onlogoTap, this.onmenuTap});
  final VoidCallback? onlogoTap;
  final VoidCallback? onmenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: Color.fromRGBO(250, 77, 30, 1),
      // navbar items
      child: Row(
        children: [
          SiteLogo(
            onTap: onlogoTap,
          ),
          const Spacer(),
          IconButton(onPressed:onmenuTap, icon: Icon(Icons.menu)),
          const SizedBox(width: 15,),
        ],
      ),
    );
  }
}
