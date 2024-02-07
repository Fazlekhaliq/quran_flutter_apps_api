import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';


class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
         color: AppColors.boxColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        decoration: InputDecoration(

          hintText: "Search Here",
          suffixIcon: Icon(Icons.search,color: Colors.white,size: 40,),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          )
        ),
      ),
    );
  }
}
