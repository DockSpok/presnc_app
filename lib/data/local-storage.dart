import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

class SomeWidget extends StatelessWidget {
  final LocalStorage storage = new LocalStorage('some_key');

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: storage.ready,
      builder: (BuildContext context, snapshot) {
//        if (snapshot.data == true) {
//          Map<String, dynamic> data = storage.getItem('key');
//
//          return SomeDataView(data: data);
//        } else {
//          return SomeLoadingStateWidget();
//        }
      },
    );
  }
}
