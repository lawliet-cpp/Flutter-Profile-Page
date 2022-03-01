
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int userLevel = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Onizuka's Profile"),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
                child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/emilia.jpeg"),
              radius: 40.0,
            )),
            SizedBox(height: 20.0),
            Text(
              "Name",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Onizuka#2005",
              style: TextStyle(
                  color: Colors.grey[200], letterSpacing: 2.0, fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Text(
              "Current Level",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Text(
                  '$userLevel',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Email",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  "aymen.charfaoui@outlook.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                )
              ],
            ),
            SizedBox(height: 30.0),
            Center(
              child: FloatingActionButton(
                onPressed: () {
                  setState((){
                    userLevel++;
                  });
                },
                backgroundColor: Colors.grey[850],
                child: Icon(Icons.add),
              ),
            )
          ],
        ),
      ),
    );
  }
}
