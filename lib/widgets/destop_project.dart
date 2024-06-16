import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant/project_details.dart';
import 'projects.dart';

class pdestop extends StatelessWidget {
  const pdestop({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
        child: Column(
          children: [
            Text(
              "Work Projects",
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30,),

            Wrap(
              spacing: 40,
              runSpacing: 20,
              children: [
                for(int i=0;i<ptitle.length;i++)
                  projectcard(title: ptitle[i],description:pdescription[i]),
              ],
            ),
          ],
        ),
      ),
    );

  }
}
