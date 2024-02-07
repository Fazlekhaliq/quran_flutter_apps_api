import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:quran_flutter_apps_api/ui/widgets/header.dart';
import 'package:quran_flutter_apps_api/ui/widgets/quranapi.dart';
import 'package:quran_flutter_apps_api/ui/widgets/search.dart';

import '../theme/app_colors.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(

          body: Container(
             height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
           decoration: const BoxDecoration(
             gradient: LinearGradient(
               colors: [AppColors.backgroundApp,AppColors.blacklight]
             )
           ),
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
             child: Column(

                children: [
                 header(),
                  Container(
                    height: 98,
                    width: 168,
                    decoration: const BoxDecoration(

                      image: DecorationImage(
                        image: AssetImage("assets/Group (2).png"),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                  search(),
                  SizedBox(height: 10,),
                  const TabBar(
                      labelColor: Colors.grey,
                      indicatorColor: Colors.white,
                      dividerHeight: 1,
                      indicatorWeight: 3,
                      indicatorSize: TabBarIndicatorSize.tab,


                      tabs: [

                    Tab(
                      child: Text(
                        'Surah',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,

                        ),

                      ),
                    ),
                    Tab(
                      child: Text(
                        'Para',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          color: Colors.white,


                        ),

                      ),
                    ),
                  ]),


                  Expanded(
                    child: TabBarView(children: [
                      QuranApi(),

                      Center(child: Text("empty")),


                    ]),
                  )




                ],
              ),
           ),
          )
        ),
      ),
    );
  }
}
