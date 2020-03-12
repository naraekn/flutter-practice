import 'package:flutter/material.dart';
import 'package:flutter_animation_app/animated_opacity.dart';
import 'package:flutter_animation_app/draggable_card.dart';
import 'package:flutter_animation_app/animated_container.dart';
import 'package:flutter_animation_app/animated_builder.dart';

import 'animated_cross_fade.dart';
import 'animated_default_text_style.dart';
import 'animated_positioned.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Animated Builder Demo"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => AnimatedBuilderDemo()
                ));
              },
            ),
            RaisedButton(
              child: Text("Animated Container Demo"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => AnimatedContainerDemo()
                ));
              },
            ),
            RaisedButton(
              child: Text("Animated Opacity Demo"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => AnimatedOpacityDemo()
                ));
              },
            ),
            RaisedButton(
              child: Text("Draggable Card Demo"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => DraggableCardDemo()
                ));
              },
            ),
            RaisedButton(
              child: Text("Animated Cross Fade Demo"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => AnimatedCrossFadeDemo()
                ));
              },
            ),
            RaisedButton(
              child: Text("Animated Default Text Style Demo"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => AnimatedDefaultTextStyleDemo()
                ));
              },
            ),
            RaisedButton(
              child: Text("Animated Positioned Demo"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => AnimatedPositionedDemo()
                ));
              },
            ),


          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
