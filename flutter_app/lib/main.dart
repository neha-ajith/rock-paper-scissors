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
      backgroundColor: Colors.red[400],
      appBar: AppBar(
        title: Text(
          "Rock - Paper - Scissors !",
          style: TextStyle(
            fontSize: 25.0,
            letterSpacing: 2.0,
            fontWeight: FontWeight.w900,
            fontFamily: 'Roboto',
            color: Colors.red[400],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body:

      Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 35),
            Center(
              child: Text(
                  '$message',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 0.2,
                  fontSize: 32.0,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 150,
                width: 150,
                child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        String output = press(rock);
                        message = output;
                      });
                    },
                  padding: EdgeInsets.all(10),
                  child: Image.asset('assets/rock.jpg'),
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 150,
                width: 150,
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      String output = press(paper);
                      message = output;
                    });
                  },
                  padding: EdgeInsets.all(10),
                  child: Image.asset('assets/paper.jpg'),
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 150,
                width: 150,
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      String output = press(scissors);
                      message = output;
                    });
                  },
                  padding: EdgeInsets.all(10),
                  child: Image.asset('assets/scissors.jpg'),
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






