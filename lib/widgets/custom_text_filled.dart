import 'package:flutter/material.dart';

class customtextfilled extends StatelessWidget {
  const customtextfilled({super.key,  this.controller, this.maxline=1,  this.hinttext});
  final TextEditingController? controller;
  final int maxline;
  final String? hinttext;



  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxline,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16),
        filled: true,
        fillColor: Colors.white54,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        enabledBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        border:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        hintText: hinttext,

      ),
    );
  }
}
