import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      child: MaterialApp(
        title: 'PresncApp',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        initialRoute: '/',
        routes: {
//        '/',: (context) => Splash(),
//        '/login': (context) => Login(),
        },
      ),
    );
  }
}
