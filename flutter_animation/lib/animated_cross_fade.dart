import 'package:flutter/material.dart';

class AnimatedCrossFadeDemo extends StatefulWidget {
  @override
  _AnimatedCrossFadeDemoState createState() => _AnimatedCrossFadeDemoState();
}

class _AnimatedCrossFadeDemoState extends State<AnimatedCrossFadeDemo> {
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
        title: Text("Animated Cross Fade Demo")
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            AnimatedCrossFade(
              duration: const Duration(seconds: 3),
              firstChild: const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 100.0),
              secondChild: const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
              crossFadeState: _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
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
