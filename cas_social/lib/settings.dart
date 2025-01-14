import 'package:cvrnet/home_page.dart';
import 'package:cvrnet/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'main.dart'; //not sure why this isn't maked as used lol
import 'credits.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Settings"),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return new Container(
      padding: EdgeInsets.only(left: 16, top: 25, right: 16),
      child: ListView(
        children: [
          //empty space
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              //eye icon
              Icon(
                Icons.remove_red_eye,
                color: Colors.deepPurple,
              ),
              //empty space
              SizedBox(
                width: 8,
              ),
              //"visuals" label text
              Text(
                "Visuals",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )
            ],
          ),
          //divider
          Divider(
            height: 15,
            thickness: 2,
          ),
          //darkmode setting box
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Darkmode",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
              Icon(
                Icons.dark_mode,
                color: Colors.grey,
              ),
              Switch.adaptive(
                  value: themeProvider.isDarkMode,
                  onChanged: (value) {
                    final provider =
                        Provider.of<ThemeProvider>(context, listen: false);
                    provider.toggleTheme(value);
                  }),
            ],
          ),
          //credits link
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Credits()),
                    );
                  },
                  child: Text("Credits",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey))),
              Icon(
                Icons.credit_card,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//* This page is due for a full rework as it currently is hard to use */
