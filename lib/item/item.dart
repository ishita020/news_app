import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Item extends StatelessWidget {
  //const Item({super.key});
  late String url;
  late String text;
  Item({
    required this.url,required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
     child: Column(
     children: [
     Container(
      margin: EdgeInsets.all(5),
     // height: 400,
      //width: 400,
      child: Image.network(url),
     ),
     Text(text,
     style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18
     ),
     )

     ]), 
    );
  }
}