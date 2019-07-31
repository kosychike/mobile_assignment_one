import 'package:flutter/material.dart';
import 'package:mobile_assignment_one/time_table.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SafeArea(
        child: new Form(
          key: _formKey,
          autovalidate: true,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: new ListView(
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.height * 0.25),
                new TextFormField(
                  autovalidate: true,
                  controller: username,
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 13.0,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0.3,
                      color: Colors.black,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigoAccent)
                    ),
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.06),

                new TextFormField(
                  autovalidate: true,
                  controller: password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    //icon: const Padding(
                    //padding: const EdgeInsets.only(top: 15.0),
                    //icon: const Icon(Icons.visibility_off),
                    //),
                    labelStyle: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 13.0,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0.3,
                      color: Colors.black,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigoAccent)
                    ),
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.04),

                //FORGOT PASSWORD CONTAINER
                new Container(
                    alignment: Alignment(1.0, 0.0),
                    child: InkWell(
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.normal,
                          fontSize: 13.0,
                          letterSpacing: 0.2,
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.15),

                //LOGIN BUTTON CONTAINER

                InkWell(
                  child: new Container(
                    width: MediaQuery.of(context).size.width * 3.5/4,
                    height: 50.0,
                    //height: MediaQuery.of(context).size.height * 0.30/4,
                    child: RaisedButton(
                      //shape: RoundedRectangleBorder(
                        //borderRadius: BorderRadius.circular(5.0),
                      //),
                      elevation: 1.0,
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TimeTable()));
                      },
                      child: new Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Lato',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}