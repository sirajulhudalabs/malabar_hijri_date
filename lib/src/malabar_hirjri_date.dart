import 'package:flutter/material.dart';

import '../malabar_hijri.dart';
import 'array.dart';

class MalabarHijriDate extends StatefulWidget {
  final String text;

  const MalabarHijriDate({Key key, this.text}) : super(key: key);

  @override
  _MalabarHijriDateState createState() => _MalabarHijriDateState();
}

class _MalabarHijriDateState extends State<MalabarHijriDate> {


  @override
  Widget build(BuildContext context) {

    ii()async{
      print(await gregorianToHijri(2020, 12, 18));
    }
    ii();
    return Semantics(
      container: false,
      button: false,
      enabled: false,
      child: new ConstrainedBox(
        constraints: BoxConstraints(minWidth: 200),
        child: new Material(
          child: Container(color:Colors.green,child: Text('ljl')),
        ),
      ),
    );
  }
}
