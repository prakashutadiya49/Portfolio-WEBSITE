import 'package:flutter/material.dart';
import 'package:mypotfolio/constant/const.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key,required this.onTap });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Text(
            'PU.',
            style:logo_style
        ),
        padding: EdgeInsets.all(6),
      ),
    );
  }
}
