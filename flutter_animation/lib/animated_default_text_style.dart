import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleDemo extends StatefulWidget {
  @override
  _AnimatedDefaultTextStyleDemoState createState() => _AnimatedDefaultTextStyleDemoState();
}

class _AnimatedDefaultTextStyleDemoState extends State<AnimatedDefaultTextStyleDemo> {
  final firstTextStyle = TextStyle(
    fontWeight: FontWeight.w900,
    color: Colors.amber,
    fontSize: 50,
  );

  final secondTextStyle = TextStyle(
    fontWeight: FontWeight.w100,
    color: Colors.blueAccent,
    fontSize: 50
  );

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
        title: Text("Animated Default Text Style")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedDefaultTextStyle(
              child: Text("Hello World"),
              style: _first ? firstTextStyle : secondTextStyle,
              duration: Duration(milliseconds: 400),
            ),
            RaisedButton(
              child: Text("Change!"),
              onPressed: (){
                setState(() {
                  _first = !_first;
                });
              },
            )
          ],
        ),
      )
    );
  }
}
