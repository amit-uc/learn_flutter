import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Image.asset('assets/images/image_1.jpeg')
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text("1"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pinkAccent,
              child: Text("2"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text("3"),
            ),
          ),
        ],
      ),
      /* Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Hello'),
              Text('World'),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
            padding: EdgeInsets.all(30.0),
            color: Colors.amber,
            child: Text("Second Container."),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
            padding: EdgeInsets.all(40.0),
            color: Colors.lightGreenAccent,
            child: Text("Third Container."),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
            padding: EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: Text("First Container."),
          ),
        ],
      ),
      */
      /*Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Hello World!'),
          FlatButton(
            onPressed: () {},
            color: Colors.amber,
            child: Text('Click Me!'),
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: Text("Inside Container!"),
          ),
        ],
      ),*/

      /*Padding(
        padding: EdgeInsets.all(50.0),
        child: Text("Amit yo!"),
      ),*/

      /*Container(
        color: Colors.grey[400],
        margin: EdgeInsets.all(30.0),
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
//        padding: EdgeInsets.all(20.0),
//        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        child: Text('Hello devscript!'),
      ),
      */
      /* Center(
          child: RaisedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.email),
              label: Text('Click me!'),
              color: Colors.amber,
          ),
          /*child: RaisedButton(
          child: Text('Click Me!'),
          onPressed: () {
            print('This is it!');
          },
          color: Colors.amber,
        ),*/
        /*child: Icon(
            Icons.airport_shuttle,
            size: 50.0,
            color: Colors.lightBlue,
        ),*/
//        child: Image.asset('assets/images/image_3.jpeg'),
//        child: Image.network('https://images.unsplash.com/photo-1572770537285-760fcbc1428a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=701&q=80')
        /*Image(
//          image: NetworkImage('https://images.unsplash.com/photo-1572770537285-760fcbc1428a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=701&q=80'),
          image: AssetImage('assets/images/image_3.jpeg'),
        )*/
        /*Text(
          'Hello from DevScripts!',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.grey[600],
            fontFamily: 'IndieFlower',
          ),
        ),*/
      ),*/
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Click"),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
