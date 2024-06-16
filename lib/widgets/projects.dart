import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class projectcard extends StatelessWidget {
  const projectcard({this.title,this.description});
  final title;
  final description;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color:Color.fromRGBO(250, 77, 30, 1),
          borderRadius: BorderRadius.circular(10),
        ),
      height: 300,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Text(
              title,
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
         Padding(
           padding: const EdgeInsets.all(10),
             child: Text(description,style: GoogleFonts.oswald(),)),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white54,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text("click me",style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
