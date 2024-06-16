import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    final screenwidth = ScreenSize.width;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      height: ScreenSize.height/1.5,
      constraints:const BoxConstraints(minHeight: 560),
      child: Column(
        children: [
          //image
          Image.asset("images/img1.png"),

          //intro text
          const SizedBox(height: 30,),
          Text("Flutter Devloper",
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(250, 77, 30, 1),
                  height: 1.5),),),

          Text(
            "Hii,I'm Prakash Utadiya\n From Rajkot",
            style: GoogleFonts.lato(
                textStyle: const TextStyle(
                    fontSize: 35, fontStyle: FontStyle.italic)),
          ),
          const SizedBox(
            height: 15,
          ),

          //button

          Container(
            width: 180,
            child:TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(250, 77, 30, 1),),
              ),
              onPressed: (){},
              child: const Text(
                "Get In Touch",
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
