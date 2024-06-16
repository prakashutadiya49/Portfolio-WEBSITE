import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

 class MainDestop extends StatelessWidget {

   const MainDestop({super.key});

   @override
   Widget build(BuildContext context) {
     final ScreenSize = MediaQuery.of(context).size;
     final screenwidth = ScreenSize.width;
     return  Container(
       margin: const EdgeInsets.symmetric(horizontal: 50.0),
       height: ScreenSize.height / 2,
       constraints:const BoxConstraints(
         minWidth: 350,
       ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Expanded(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Flutter Devloper",
                     style: GoogleFonts.lato(
                       textStyle: const TextStyle(
                           fontSize: 30,
                           fontWeight: FontWeight.bold,
                           color: Color.fromRGBO(250, 77, 30, 1),
                           height: 1.2
                       ),
                     ),),
                 Text(
                   "Hii,I'm Prakash Utadiya\n From Rajkot",
                   style: GoogleFonts.lato(
                       textStyle: const TextStyle(
                           fontSize: 45, fontStyle: FontStyle.italic)),
                 ),
                 const SizedBox(
                   height: 15,
                 ),
                 Container(
                   width: 200,
                   child:TextButton(
                     style: ButtonStyle(
                       backgroundColor: const MaterialStatePropertyAll(Color.fromRGBO(250, 77, 30, 1),),
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
           ),
           Expanded(child: Image.asset("images/img1.png")),
         ],
       ),
     );
   }
 }

