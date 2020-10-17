import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
    home: Home(),
  ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int rock = 1,paper = 2,scissors = 3,num;
  String draw = 'Draw !!';
  String message = "Meow!! Smudge Lord here.\n           Choose one.";


  String press(int val){
    Random rnd;
    int min = 1;
    int max = 3;
    rnd = new Random();
    num = min + rnd.nextInt(max - min);
    if(val == num){
      return draw;
    }
    else if(num == 1 && val == 2){
      return "And I chose rock! You're really good at this!!";
    }
    else if(num == 2 && val == 3){
      return 'And I chose paper! Woah! Good one!';
    }
    else if(num == 3 && val == 1){
      return "And I chose scissors! Woah! You're really good!";
    }
    else if(num == 1 && val == 3){
      return 'And I chose rock! Yayyy! I won!';
    }
    else if(num == 2 && val == 1){
      return "And I chose paper! I'm getting good at this!";
    }
    else if(num == 3 && val == 2){
      return "And I chose scissors! Wow I'm good at this!";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rock - Paper - Scissors !",
          style: TextStyle(
            fontSize: 25.0,
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Rubik',
            color: Colors.red[400],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body:
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/r-p-s.jpg"),
            fit: BoxFit.fill,
          )),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                  '$message',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 0.2,
                  fontSize: 32.0,

                  fontFamily: 'Roboto',
                ),
              ),
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        String output = press(rock);
                        message = output;
                      });
                    },
                    child: Text(
                        'Rock',
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        letterSpacing: 0.5,
                        color: Colors.red[400],
                        fontSize: 43.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  color: Colors.white,
                ),
              ),
              SizedBox(
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      String output = press(paper);
                      message = output;
                    });
                  },
                  child: Text(
                      'Paper',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      letterSpacing: 0.5,
                      color: Colors.red[400],
                      fontSize: 43.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
              SizedBox(
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      String output = press(scissors);
                      message = output;
                    });
                  },
                  child: Text(
                      'Scissors',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      letterSpacing: 0.5,
                      color: Colors.red[400],
                      fontSize: 43.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ]
        ),
      ),
    );
  }
}






