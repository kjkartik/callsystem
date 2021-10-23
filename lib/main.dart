import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Call App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final url = Uri.parse(
  //     "https://api.plivo.com/v1/Account/{auth_id}/Call/{call_uuid}/Play/");
  // void urls() async {
  //   var body = ({'urls': "https://s3.amazonaws.com/plivocloud/Trumpet.mp3"});
  //   http.post((url), body: body);
  //   print(body);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('url'),
      ),
      body: Container(
        child: RaisedButton(
          onPressed: () async {
            var body = ({"text": "Hey, How aryou?"});
            await http.post(
                Uri.parse(
                    "https://api.plivo.com/v1/Account/{auth_id}/Call/{call_uuid}/Speak/"),
                // headers: <String, String>{'Content-Type': 'application/json'},
                body: body);
          },
        ),
      ),
    );
  }
}
