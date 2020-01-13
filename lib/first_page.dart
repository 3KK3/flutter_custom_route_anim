
import 'package:flutter/material.dart';
import 'second_file.dart';
import 'customer_router.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.add,
            color: Colors.orange,
            size: 39.0,
          ),
          onPressed: (){
            MaterialPageRoute route = MaterialPageRoute(
              builder: (BuildContext context) {
                return SecondPage();
              });

            CustomerRouter customerRouter = CustomerRouter(SecondPage());
            Navigator.of(context).push(customerRouter);
          },
        ),
      ),
      appBar: AppBar(
        elevation: 20.0,
        title: Text(
            "text",
          style: TextStyle(
            color: Colors.purple,
          ),
        ),
      ),

    );
  }
}
