import 'package:flutter/material.dart';

import 'dice.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice game',
      home: LogIn(),
    );
  }
}

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController controllerID = TextEditingController();
  TextEditingController controllerPW = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: Builder(
        builder: (context) {
          return GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Center(
                    child: Image(
                      image: AssetImage('image/calendar.png'),
                      width: 170.0,
                      height: 190.0,
                    ),
                  ),
                  Form(
                    child: Theme(
                      data: ThemeData(
                        primaryColor: Colors.teal,
                        inputDecorationTheme: InputDecorationTheme(
                          labelStyle: TextStyle(
                            color: Colors.teal,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          children: [
                            TextField(
                              // autofocus: true,
                              controller: controllerID,
                              decoration: InputDecoration(labelText: 'Enter "ID"'),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            TextField(
                              controller: controllerPW,
                              decoration:
                                  InputDecoration(labelText: 'Enter "PW"'),
                              keyboardType: TextInputType.text,
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            ButtonTheme(
                              minWidth: 100.0,
                              height: 50.0,
                              child: RaisedButton(
                                color: Colors.orangeAccent,
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 35.0,
                                ),
                                onPressed: () {
                                  if (controllerID.text == 'ID' &&
                                      controllerPW.text == 'PW') {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Dice()));
                                  } else if (controllerID.text == 'ID' &&
                                      controllerPW.text != 'PW') {
                                    showSnackBar2(context);
                                  } else if (controllerID.text != 'ID' &&
                                      controllerPW.text == 'PW') {
                                    showSnackBar3(context);
                                  } else {
                                    showSnackBar(context);
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void showSnackBar(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text(
      '????????? ????????? ?????? ???????????????.',
      textAlign: TextAlign.center,
    ),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blueGrey,
  ));
}

void showSnackBar2(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text(
      'PW??? ???????????? ????????????',
      textAlign: TextAlign.center,
    ),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blueGrey,
  ));
}

void showSnackBar3(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text(
      'ID??? ???????????? ????????????.',
      textAlign: TextAlign.center,
    ),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blueGrey,
  ));
}
