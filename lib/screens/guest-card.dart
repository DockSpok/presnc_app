import 'package:flutter/widgets.dart';
import 'package:presnc_app/models/guest.dart';
import 'package:flutter/material.dart';

class GuestCard extends StatelessWidget {
  final Guest guest;

  GuestCard({this.guest});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(guest.nome),
            subtitle: Text(guest.evento),
            trailing: Text(guest.data),
          )
        ],
      ),
    );
  }
}
