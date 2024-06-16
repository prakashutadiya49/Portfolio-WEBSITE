import 'package:flutter/material.dart';
import '../constant/skill_items.dart';

class skill_mobile extends StatelessWidget {
  const skill_mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return  ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 500,
      ),
      child: Column(
        children: [
          //platforms
          for (int i = 0; i < platformItems.length; i++)
            Container(
              margin: EdgeInsets.only(bottom: 5),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                leading: Image.asset(platformItems[i]["img"],width: 26,),
                title: Text(platformItems[i]["title"]),
              ),
            ),

          const SizedBox(
            height: 50,
          ),

          // skills
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < skillItems.length; i++)
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    leading: Image.asset(skillItems[i]["img"]),
                    title: Text(skillItems[i]["title"]),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
