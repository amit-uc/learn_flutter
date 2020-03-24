import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {
    
    data = ModalRoute.of(context).settings.arguments;
    print(data);

    // Set backgroud
    String bgImage = data["isDayTime"] ? 'day.jpg' : 'night.jpg';
    Color bgColor = data["isDayTime"] ? Colors.blueGrey[50] : Colors.blueGrey[900];

    Color textColor = data["isDayTime"] ? Colors.grey[800] : Colors.white;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/$bgImage'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 120.0, 0.0, 0.0),
            child: Column(
              children: <Widget>[
                FlatButton.icon(onPressed: () {
                  Navigator.pushNamed(
                      context,
                      '/location'
                  );
                },
                    icon: Icon(
                      Icons.edit_location,
                      color: textColor,
                    ),
                    label: Text(
                        'Edit Location',
                         style: TextStyle(
                           color: textColor
                         ),
                    )
                ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data['location'],
                      style: TextStyle(
                        color: textColor,
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),
                Text(
                  data['time'],
                  style: TextStyle(
                    color: textColor,
                    fontSize: 66.0,
                    letterSpacing: 2.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
