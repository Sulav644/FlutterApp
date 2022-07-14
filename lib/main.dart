import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterapplication/addList.dart';
import 'package:flutterapplication/adventureList.dart';
import 'package:flutterapplication/fashionList.dart';
import 'package:flutterapplication/homePage.dart';
import 'package:flutterapplication/healthList.dart';
import 'package:flutterapplication/photographyList.dart';
import 'package:flutterapplication/scienceList.dart';
import 'package:flutterapplication/travelList.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

void main() async {
  runApp(MaterialApp(
    title: "Flutter App",
    home: homePage(),
    routes: {
      "/addList": (context) => addList(),
      "/healthList":(context) => healthList(),
      "/travelList":(context) => travelList(),
      "/fashionList":(context) => fashionList(),
      "/photographyList":(context) => photographyList(),
      "/scienceList":(context) => scienceList(),
      "/adventureList":(context) => adventureList(),
    },
  ));
}




