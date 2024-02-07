import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import '../../model/model.dart';

class QuranApi extends StatelessWidget {
  const QuranApi({super.key});

  @override
  Widget build(BuildContext context) {
    Future<model> getQuranApi () async {

      String  uri=("https://api.alquran.cloud/v1/surah");
      final response = await http.get(Uri.parse(uri));
      var data = jsonDecode(response.body.toString());
      if(response.statusCode == 200){
        // print(data['data'][12]['name']);
        // print(data['data'][12]['number']);

        return model.fromJson(data);

      }else {
        return model.fromJson(data);

      }
    }

    return FutureBuilder<model>(
      future: getQuranApi(),
      builder: (context , snapshot){

        if(snapshot.hasData){
          return ListView.builder(
              itemCount: snapshot.data!.data!.length,
              itemBuilder: (_, index){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(),
                    ListTile(


                      leading: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/Vector (2).png"),

                            )
                        ),
                        child: Center(
                          child: Text(snapshot.data!.data![index].number.toString(),style: TextStyle(
                              color: Colors.white
                          ),),
                        ),
                      ),
                      trailing: Text(snapshot.data!.data![index].name.toString(),style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),),
                      title: Text(snapshot.data!.data![index].englishName.toString(),style: TextStyle(
                          color: Colors.white
                      ),),
                      subtitle: Row(
                        children: [
                          Text(snapshot.data!.data![index].revelationType.toString(),style: TextStyle(
                              color: Colors.white
                          ),),
                          SizedBox(height: 5,),
                          Text("-"+snapshot.data!.data![index].numberOfAyahs.toString(),style: TextStyle(
                              color: Colors.white
                          ),),
                          Text("VERSES",style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                          ),)
                        ],
                      ),


                    ),


                  ],
                );
              });

        }else{
          return CircularProgressIndicator();
        }
      },
    );
  }
}
