import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mehedi_design/model/image_model.dart';
import 'package:mehedi_design/views/const/strings.dart';

import '../const/colors.dart';
import '../const/list.dart';

class DetailsScreen extends StatelessWidget {
  String title;


  DetailsScreen({super.key, required this.title,});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: mainColor,
          title: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          leading: BackButton()),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (_, index) {
                  return Column(
                    children: [
                      Image.asset(
                        imageList[index],
                        width: 160,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      // Text("Front Hand")
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
