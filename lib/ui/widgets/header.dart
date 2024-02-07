import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class header extends StatelessWidget {
  const header({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/gg_menu-left.png"),

              )
          ),
        ),
        Container(
          height: 50,
          width: 40,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey
          ),
        )

      ],
    );
  }
}
