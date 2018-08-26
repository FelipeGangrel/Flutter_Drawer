import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String mainProfilePicture = "assets/cigarboi.jpg";
  String otherProfilePicture = "assets/fabulous.jpg";


  void switchUser() {

    String backupString = mainProfilePicture;

    this.setState(() {
      mainProfilePicture = otherProfilePicture;
      otherProfilePicture = backupString;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My Drawer App"),
        backgroundColor: Colors.pinkAccent,
      ),
      drawer: new Drawer(
        child: new ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Pink Guy"),
              accountEmail: new Text("thiccboi@b00s.com"),
              currentAccountPicture: new GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: new AssetImage(mainProfilePicture),
                ),
                onTap: () => switchUser(),
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  child: new CircleAvatar(
                    backgroundImage: new AssetImage(otherProfilePicture),
                  ),
                  onTap: () => switchUser(),
                ),
              ],
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("assets/pinkguy2.jpg"),
                  fit: BoxFit.cover,
                )
              ),
            ),
            new ListTile(
              title: new Text("Segunda page"),
              trailing: new Icon(Icons.favorite),
              onTap: () {
                // Navigator.of(context).pop();
                Navigator.of(context).popAndPushNamed("/secondPage");
              }
            ),
            new Divider(),
            new ListTile(
              title: new Text("Fechar"),
              trailing: new Icon(Icons.cancel),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: new Center(
        child: new Text(
          "Home Page",
          style: new TextStyle(
            fontSize: 35.0,
          ),
        ),
      ),
    );
  }
}
