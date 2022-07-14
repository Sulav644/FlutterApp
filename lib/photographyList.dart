import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class photographyList extends StatefulWidget {
  

  @override
  State<photographyList> createState() => _photographyListState();
}

class _photographyListState extends State<photographyList> {
  var url = "http://10.0.2.2:8080/api/photography";
  var data;



  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res= await http.get(Uri.parse(url));
    data= jsonDecode(res.body);
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TrueBlogger"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: data != null ? ListView.builder(
            itemCount: data.length,
          itemBuilder: ((context, index) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: 100,
                    height: 50,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Image.network("https://images.pexels.com/photos/414860/pexels-photo-414860.jpeg?auto=compress&cs=tinysrgb&w=600",
                        width: 50,
                        height: 50,),
                  
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: 200,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text(data[index]["title"], style: TextStyle(
                      fontSize: 20,
                    ),),
                    Text("Year: 2020"),
                    Container(
                      width: 10,
                      height: 10,
                    ),
                    Text(data[index]["description"]),
                    Container(
                      width: 10,
                      height: 10,
                    ),
                    Container(
                      width: 400,
                      height: 2,
                      color: Colors.black,
                    )
                        
                      ],
                    ),
                  ),
                ),
              ],
              
               
              
            );
          }
          )) : Center(
                child: CircularProgressIndicator()),
      ),
      
    );
  }
}
