import 'package:flutter/material.dart';
//import 'package:cupertino_icons/';
import 'package:meta/meta.dart';



class ExpenseRow extends StatelessWidget {

  final String labelText;
  final Icon iconInput;
  final TextEditingController controllerInput;
 // final ColorSwatch colorInput;

  //Constructor
  ExpenseRow(this.labelText, this.iconInput, this.controllerInput);



  @override
  Widget build(BuildContext context)
  {
      return Material(
        color: Colors.transparent,
        child: Container(
          height: 100.0,
          child: Row(
            children: <Widget>[
              new Icon(Icons.attach_money),
              new TextField(
                controller: controllerInput,
                decoration: new InputDecoration( labelText: labelText,
                )
                ,
              )
            ]
    )
    )
      )
  ;}
}