
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.airplay,
            size: 100.0,
            color: Colors.red,

          ),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),

      ),
      appBar: AppBar(
        title: Text("appbar"),
      ),
    );
  }
}
