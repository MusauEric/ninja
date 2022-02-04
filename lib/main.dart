import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: ninja(),
    ));

class ninja extends StatefulWidget {
  @override
  State<ninja> createState() => _ninjaState();
}

class _ninjaState extends State<ninja> {
  int ninjalevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text("Ninja Id"),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
                ninjalevel +=1;
              });
            },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage:AssetImage("assets/logo.png"),
                  radius: 40.0,

                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey,
              ),
              Text(
                "Name",
                style: TextStyle(color: Colors.grey,
                    letterSpacing: 2.0),
              ),
              SizedBox(height: 10.0),
              Text(
                "Erick",
                style: TextStyle(
                    color: Colors.amber[200],
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Text(
                "Current level ",
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              SizedBox(height: 10.0),
              Text(
                "$ninjalevel",
                style: TextStyle(
                    color: Colors.amber[200],
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0),
                  Text("erick@gmail.com",
                  style:TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 1.0,
                    fontSize: 18.0
                  ))
                ],
              ),
            ],
          ),
        ));
  }
}

