import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/perfil01.jpg'),
            ),
            Text(
              'Fulano de Tal',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold), // FontWeight.bold,
            ),
            Text('email'),
            Text('senha'),
            RaisedButton(
              child: Text('Entrar'),
              onPressed: () {
                Navigator.pushNamed(context, '/login-signin');
              },
            ),
            Text(''),
            Text('ou...'),
            RaisedButton(
              child: Text('Entrar com Google'),
              onPressed: () {
                Navigator.pushNamed(context, '/login-goo');
              },
            ),
            RaisedButton(
              child: Text('Entrar com Facebook'),
              onPressed: () {
                Navigator.pushNamed(context, '/login-fb');
              },
            ),
          ],
        ),
      ),
    );
  }
}