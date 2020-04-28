import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Text('Magic Ball')),
        ),
        body: Myball(),
      )
  ));
}

class Myball extends StatefulWidget {
  @override
  _MyballState createState() => _MyballState();
}

class _MyballState extends State<Myball> {
  var counter=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        child: FlatButton(
          onPressed: (){
             setState(() {
               counter++;
               if(counter==6)
                 counter=1;
             });
          },
          child: Image.asset('images/ball$counter.png'),
        ),
      ),
    );
  }
}
