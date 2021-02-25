

import 'package:flutter/material.dart';
//import 'package:onda_ritmica/src/ui/widgets/common/rythm_button.dart';
import 'package:onda_ritmica/src/ui/widgets/splash/logo.dart';

class MyCard extends StatelessWidget {
  MyCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: InkWell(
          splashColor: Theme.of(context).accentColor,
          onTap: () {
          },
          child: Column(
            children: <Widget>[  
              Logo(
                color: Colors.black,
                size: 86.0,
              ),

              FlatButton(
                height: MediaQuery.of(context).size.height * 0.09,
                minWidth: MediaQuery.of(context).size.width * 1.0,
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                autofocus: true,
                splashColor: Colors.cyan,
                onPressed: () {
                  /*...*/
                },
                child: Text(
                  "Button",
                ),
              )
            ],
        ),
        ),
      );
  }
}