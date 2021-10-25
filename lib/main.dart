import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

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
  var body = ({});
  // Future<http.Response>
  postRequest() async {
    final String url = "   IBM.Watson.DeveloperCloud.Services.TextToSpeech.v1";
    var response = await http.post(Uri.parse(url), body: body);
    print("${response.statusCode}");
    print("${response.body}");
    print("${response.reasonPhrase}");
    return response;
  }

  void initState() {
    super.initState();
    postRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('url'),
      ),
      body: Container(
        child: RaisedButton(
          onPressed: () async {
            postRequest();
          },
        ),
      ),
    );
  }
}
