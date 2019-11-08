import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:qr_utils/qr_utils.dart';

class IamHere extends StatefulWidget {
  @override
  _IamHereState createState() => _IamHereState();
}

class _IamHereState extends State<IamHere> {
  String _conteudo_qr = 'Undefined';
  String _qrBase64Content = 'Undefined';
  Image _qrImg;

  TextEditingController _qrTextEditingController = TextEditingController();

  String _error;

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text('Presnc App - Marcar minha presença'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Ler QR: ",
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  Text(_conteudo_qr),
                  SizedBox(
                    height: 24.0,
                  ),
                  FlatButton(
                    color: Colors.deepOrange,
                    onPressed: _scanQR,
                    child: Text(
                      'Ler QR',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Divider(),
                  SizedBox(
                    height: 24.0,
                  ),
                  TextFormField(
                    controller: _qrTextEditingController,
                    decoration: InputDecoration(
                        hintText: 'Conteúdo do QR',
                        labelText: 'Conteúdo do QR',
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  _qrImg != null
                      ? Container(
                          child: _qrImg,
                          width: 220.0,
                          height: 220.0,
                        )
                      : Image.asset(
                          'assets/images/ic_no_image.png',
                          width: 220.0,
                          height: 220.0,
                          fit: BoxFit.cover,
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _scanQR() async {
    String result;
    try {
      result = await QrUtils.scanQR;
    } on PlatformException {
      result = 'Falha no processo!';
    }

    setState(
      () {
        _conteudo_qr = result;
      },
    );
  }
}
