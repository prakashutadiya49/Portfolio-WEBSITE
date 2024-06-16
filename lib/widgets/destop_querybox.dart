import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mypotfolio/constant/const.dart';
import 'package:mypotfolio/constant/sns_links.dart';
import 'dart:js' as js;
import 'custom_text_filled.dart';



class DestopQueryBox extends StatelessWidget {
  const DestopQueryBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: const Color.fromRGBO(250, 77, 30, 1),
      child: Column(
        children: [
          Text(
            "Get In Touch",
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700,maxHeight: 100),
            child:LayoutBuilder(builder: (context ,Constraints) {
              if (Constraints.maxWidth >= kmindestopwidth) {
                return NameEmailBoxDestop();
              }
              return NameEmailBoxMobile();
            },

            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: const customtextfilled(
                hinttext: "Your Query",
                maxline: 20,
              )),
          const SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.white54),
                    ),
                    onPressed: () {},
                    child: const Text("Get in touch"))),
          ),
          const SizedBox(
            height: 30,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 300),
            child: const Divider(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(onTap: () {
                js.context.callMethod('open',[links.facebook]);
              }, child: Image.asset("images/facebook.png",width: 28,)),
              InkWell(onTap: () {
                js.context.callMethod('open',[links.instagram]);
              }, child: Image.asset("images/instagram.png",width: 28,)),
              InkWell(onTap: () {
                js.context.callMethod('open',[links.github]);
              }, child: Image.asset("images/github.png",width: 28,)),
              InkWell(onTap: () {
                js.context.callMethod('open',[links.linkedin]);
              }, child: Image.asset("images/linkedin.png",width: 28,)),

            ],
          )
        ],
      ),
    );

  }
  Row NameEmailBoxDestop(){
    return  Row(
      children: [
        Flexible(
          child: customtextfilled(
            hinttext: "Enter Your Name",
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Flexible(
            child:  customtextfilled(
              hinttext: "Enter Your Email",
            )),
      ],
    );
  }


  Column NameEmailBoxMobile(){
    return  Column(
      children: [
        Flexible(
          child:  customtextfilled(
            hinttext: "Enter Your Name",
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Flexible(
            child: customtextfilled(
              hinttext: "Enter Your Email",
            )),
      ],
    );
  }

}
