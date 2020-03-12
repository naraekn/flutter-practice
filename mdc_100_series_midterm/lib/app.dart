
import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';
import 'signup.dart';
import 'search.dart';
import 'detail.dart';
import 'favorite.dart';
import 'ranking.dart';
import 'mypage.dart';

class ShrineApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      home: HomePage(),
      initialRoute: '/login',
      routes:{
        '/home': (context) => HomePage(),
        '/signup': (context) => SignUpPage(),
        '/search': (context) => SearchPage(),
        '/detail': (context) => DetailPage(),
        '/favorite': (context) => FavoritePage(),
        '/ranking': (context) => RankingPage(),
        '/mypage': (context) => MyPage(),
      },
      onGenerateRoute: _getRoute,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginPage(),
      fullscreenDialog: true,
    );
  }
}