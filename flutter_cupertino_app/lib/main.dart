import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cupertino_app/app.dart';
import 'package:flutter_cupertino_app/model/app_state_model.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, DeviceOrientation.portraitDown
  ]);

  return runApp(
      ChangeNotifierProvider<AppStateModel>(
        create: (context) => AppStateModel()..loadProducts(),
        child: CupertinoStoreApp()
      )
  );
}

