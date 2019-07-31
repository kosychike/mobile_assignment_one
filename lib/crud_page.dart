import 'package:flutter/material.dart';
import 'package:mobile_assignment_one/time_card.dart';

class CrudPage extends StatefulWidget {
  @override
  CrudPageState createState() => CrudPageState();
}

class CrudPageState extends State<CrudPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => TimeCard()));
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              //Continue button to login page container
              Container(
                width: MediaQuery.of(context).size.width * 3.5/4,
                height: 50.0,
                child: RaisedButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: (){},
                  child: Text(
                    'View',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                      //color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Container(
                width: MediaQuery.of(context).size.width * 3.5/4,
                height: 50.0,
                child: RaisedButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: (){},
                  child: Text(
                    'Update',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                      //color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Container(
                width: MediaQuery.of(context).size.width * 3.5/4,
                height: 50.0,
                child: RaisedButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: (){},
                  child: Text(
                    'Delete',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                      //color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}