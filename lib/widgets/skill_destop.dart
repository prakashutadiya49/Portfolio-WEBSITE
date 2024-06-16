import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constant/skill_items.dart';

class skill_destop extends StatelessWidget {
  const skill_destop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 450,
          ),
          child: Wrap(
            spacing: 5.0,
            runSpacing: 5.0,
            children: [
              for (int i = 0; i < platformItems.length; i++)
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    leading: Image.asset(platformItems[i]["img"]),
                    title: Text(platformItems[i]["title"]),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 500,
            ),
            child: Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
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
          ),
        ),
      ],
    );
  }
}
