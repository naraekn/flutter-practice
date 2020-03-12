import 'package:flutter/material.dart';

class AnimatedPositionedDemo extends StatefulWidget {
  @override
  _AnimatedPositionedDemoState createState() => _AnimatedPositionedDemoState();
}

class _AnimatedPositionedDemoState extends State<AnimatedPositionedDemo> {
  bool _first;

  @override
  void initState() {
    _first = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Positioned")
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              height: 500,
              width: 500,
              color: Colors.blueAccent
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            bottom: _first? 70 : 10,
            right: 10,
            child: Container(
                height: 500,
                width: 500,
                color: Colors.redAccent
            ),
          ),
          FlatButton(
            child: Text("Change!"),
            onPressed: (){
              setState(() {
                _first = !_first;
              });
            },
          )
        ],
      )
    );
  }
}
