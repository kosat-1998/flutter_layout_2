import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("HomeWork"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row1(),
                  //  Padding(padding: EdgeInsets.all(10)),
                  Row2(),
                  //  Padding(padding: EdgeInsets.all(10)),
                  iconRow(),
                  // Padding(padding: EdgeInsets.all(10)),
                  Divider(color: Colors.grey),
                  Text(
                    "Entrepreneur and businessman Bill Gates and his business partner Paul Allen founded and built the world's largest software business, Microsoft, through technological innovation, keen business strategy and aggressive business tactics. In the process, Gates became one of the richest men in the world.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            )));
  }
}

class Row1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        profile(),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            'images/billgate.jpg',
            width: 100,
            height: 140,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}

Column profile() {
  return Column(
    children: <Widget>[
      Text(
        "Bill Gate",
        style: TextStyle(color: Colors.amber, fontSize: 30),
        textAlign: TextAlign.center,
      ),
      Padding(padding: EdgeInsets.all(10)),
      Row(
        children: <Widget>[
          Icon(
            Icons.add_location,
            color: Colors.red,
          ),
          Text(
            "Los Angles,CA",
            style: TextStyle(color: Colors.blue, fontSize: 15),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      Padding(padding: EdgeInsets.all(15)),
      RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Colors.brown)),
        onPressed: null,
        child: Text("Follow"),
        textColor: Colors.white,
      ),
      innerRow()
    ],
  );
}

Row innerRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Column(
        children: <Widget>[
          Text(
            "123",
            style: TextStyle(color: Colors.black26, fontSize: 10),
          ),
          Text("Post")
        ],
      ),
      Padding(padding: EdgeInsets.all(30)),
      Column(
        children: <Widget>[
          Text(
            "12343",
            style: TextStyle(color: Colors.black26, fontSize: 10),
          ),
          Text("Followers")
        ],
      )
    ],
  );
}

class Row2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'images/b1.jpg',
          width: 80,
          height: 120,
          fit: BoxFit.cover,
        ),
        Image.asset(
          'images/b2.jpg',
          width: 80,
          height: 120,
          fit: BoxFit.cover,
        ),
        Image.asset(
          'images/b4.jpg',
          width: 80,
          height: 120,
          fit: BoxFit.cover,
        ),
        Image.asset(
          'images/b5.jpg',
          width: 80,
          height: 120,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}

Row iconRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Icon(
        Icons.call,
        color: Colors.blue,
      ),
      Icon(
        Icons.ac_unit,
        color: Colors.green,
      ),
      Icon(
        Icons.accessibility_new,
        color: Colors.purple,
      ),
      Icon(
        Icons.account_balance_wallet,
        color: Colors.orange,
      ),
    ],
  );
}
