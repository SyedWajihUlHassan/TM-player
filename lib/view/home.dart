
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  final String title;

  const Home({Key key, this.title}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Container(
        child: Text("add folders here"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,

          children: <Widget>[
            Container(
              height: 120.0,
              child: DrawerHeader(
                decoration:  BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.blueGrey,
                      Colors.black26,
                    ]
                  )
                ),
                  child: Text(widget.title,
                  textAlign: TextAlign.center,
                    style: GoogleFonts.abel(
                      textStyle: TextStyle(fontSize: 28.0,
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  )
              ),
            ),
            ListTile(
              leading: Icon(Icons.playlist_play_sharp),
              title: Text("Playlists"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.folder_outlined),
              title: Text("Folders"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text("History"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
