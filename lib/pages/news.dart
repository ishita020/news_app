// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newsapp/item/item.dart';
import 'package:newsapp/services/info_services.dart';

import '../model/info.dart';

class NewsApp extends StatefulWidget {
 // const NewsApp({super.key});
 NewsApp(){}
  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  InfoServices service=InfoServices();
  List<Info> info=[];
  @override
  void initState(){
    super.initState();
  Future<List<Info>>future=service.getInfo();
  future.then((List<Info>info){
    this.info=info;
    setState((){

    });
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Icon(Icons.menu),
        actions: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 7),
        child:Icon(Icons.live_tv)
        ),
         Padding(padding: EdgeInsets.symmetric(horizontal: 9),
        child:Icon(Icons.notifications)
        )
        ],
        
        backgroundColor: Color.fromARGB(255, 22, 49, 70)
        ,
        title: Text("News App"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 5,right: 5,top: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(),
              ),
            child: 
            const TextField(
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                
                prefixIcon: Icon(Icons.search),
                hintText: "Search here"
              ),
            ),
            ),
          Divider(),
          Container(
        child: Image.network("https://thumbs.dreamstime.com/b/news-9994192.jpg")
          ),
          Wrap(
           children: info.map((e) => Item(url: e.url, text: e.text)).toList(),
           )
          ],
           ),
          ),
             
    );    
              
            
            
           
          
        
  }
}