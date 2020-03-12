import 'package:flutter/material.dart';

const owl_url = 'https://raw.githubusercontent.com/flutter/website/master/src/images/owl.jpg';

class AnimatedOpacityDemo extends StatefulWidget {
  _AnimatedOpacityDemoState createState() => _AnimatedOpacityDemoState();
}

class _AnimatedOpacityDemoState extends State<AnimatedOpacityDemo> {
  double opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fade In Demo")
      ),
      body: Column(children: <Widget>[
        Image.network(owl_url),
        MaterialButton(
            child: Text(
              'Show details',
              style: TextStyle(color: Colors.blueAccent),
            ),
            onPressed: () {
              setState(() {
                opacity = 1;
              });
            },
        ),
        AnimatedOpacity(
          duration: Duration(seconds: 2),
          opacity: opacity,
          child: Column(
            children: <Widget>[
              Text('Type: Owl'),
              Text('Age: 39'),
              Text('Employment: None'),
            ],
          ),
        )
      ]),
    );
  }
}

