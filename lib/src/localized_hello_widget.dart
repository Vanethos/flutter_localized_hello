import 'package:flutter/material.dart';

class LocalizedHello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        border: Border.all(color: Color(0xff75eaff), style: BorderStyle.solid, width: 6.0),
        color: Color(0xffb1ff75),
      ),
      padding: EdgeInsets.all(18.0),
      child: Text("Bom dia!", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Color(0xffff7a75)),),
    );
  }
}