import 'package:flutter/material.dart';
import 'package:mypotfolio/widgets/%20main_mobile.dart';
import 'package:mypotfolio/widgets/destop_project.dart';
import 'package:mypotfolio/widgets/header_mobile.dart';
import 'package:mypotfolio/widgets/main_destop.dart';
import 'package:mypotfolio/widgets/projects.dart';
import '../widgets/custom_text_filled.dart';
import '../widgets/destop_querybox.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_destop.dart';
import 'package:mypotfolio/constant/const.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/skill_destop.dart';
import '../widgets/skill_mobile.dart';
import 'package:mypotfolio/constant/project_details.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  // final ScaffoldKey = GlobalKey<ScaffoldState>();
  // final List<GlobalKey> navbarkeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Color.fromRGBO(2, 2, 2, 1),
        // key: ScaffoldKey,
        endDrawer: constraints.maxWidth >= kmindestopwidth
            ? null
            : DrawerMobile(onNavitemtap:(int navIndex) {
          // ScaffoldKey.currentState?.closeEndDrawer();
                Scrollsection(navIndex);
        },),
        // SingleChildScrollView(
        //     controller: ScrollController(),
        //     scrollDirection: Axis.vertical,
        //     child:
        body: Column(
          children: [
            // SizedBox(key: navbarkeys.first,),
            // destop header
            if (constraints.maxWidth >= kmindestopwidth)
              navigationbar(onNavManuTap: (int navIndex){

              },)
            else
            //mobile header
              HeaderMobile(
                onmenuTap: () {
                  // ScaffoldKey.currentState?.openEndDrawer();
                },
              ),
            //destop main

            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  if (constraints.maxWidth >= kmindestopwidth)
                    const MainDestop()
                  else //mobile main
                    const MainMobile(),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    // key: navbarkeys[1],
                    width: double.maxFinite,
                    padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                    color: const Color.fromRGBO(250, 77, 30, 1),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "What can I do",
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
                        if (constraints.maxWidth >= kmidumdestopwidth)
                          const skill_destop()
                        else
                          const skill_mobile(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  //key: navbarkeys[2],
                    pdestop(),
                  const SizedBox(
                    height: 30,
                  ),
                   DestopQueryBox(),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }

  void Scrollsection(int navIndex){
    if(navIndex==4){
      //open blog
      return;
    }
    // final key=navbarkeys[navIndex];
    // Scrollable.ensureVisible(key.currentContext!,duration: const Duration(microseconds: 500),curve:Curves.easeInOut  );
  }
}


