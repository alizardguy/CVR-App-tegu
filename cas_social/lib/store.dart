//purpose: new feed testing area
//created by: alizardguy (9/24/2022 11:22AM)
//Project: https://github.com/alizardguy/CompensationVR-App-Tegu
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorePage extends StatefulWidget {
  StorePage({Key? key}) : super(key: key);

  @override
  _StorePageState createState() => new _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          //actions
          actions: <Widget>[
            //refresh button
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              tooltip: 'Refresh',
              onPressed: () {
                setState(() {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => super.widget));
                });
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Refreshed Store')));
              },
            ),
          ]),
      body: _body(),
    );
  }

  Widget _body() {
    return new Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Store"),
        ],
      ),
    );
  }
}