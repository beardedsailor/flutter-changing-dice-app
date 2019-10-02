import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[300],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

  class DicePage extends StatefulWidget {
    @override
    _DicePageState createState() => _DicePageState();
  }
  
  class _DicePageState extends State<DicePage> {
     var leftdicenumber=1;
     var rightdicenumber=2;
     @override
  Widget build(BuildContext context) {
    
    
    return Center(child: Row(
      children: <Widget>[
        
        Expanded(
          
          child: Padding(padding: const EdgeInsets.all(16.0),
     
      child: FlatButton ( onPressed: (){
        setState(() {
          print('left button is pressed');
          leftdicenumber=Random().nextInt(6)+1;
          rightdicenumber=Random().nextInt(6)+1;
        });
          
        },
        child:Image(image:AssetImage('images/dice$leftdicenumber.png'),
       ),
       ),
       ),
      ),
       
       Expanded(   child: Padding(padding: const EdgeInsets.all(16.0),
     
      child: FlatButton (
        onPressed: (){setState(() {
          print('right button is pressed');
          leftdicenumber=Random().nextInt(6)+1;
          rightdicenumber=Random().nextInt(6)+1;
        });
          
        },
        child:
      Image(image:AssetImage('images/dice$rightdicenumber.png'),
      ),
      ),
      ),
      ),

    ],
    ),
    );
  }
}


