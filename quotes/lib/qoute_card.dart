import 'package:flutter/material.dart';
import 'quote.dart';

class QouteCard extends StatelessWidget {
  final Quote qoute;
  final Function delete;
  QouteCard({ this.qoute, this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              qoute.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0,),
            Text(
              qoute.author,
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[400]
              ),
            ),
            SizedBox(height: 6.0,),
            FlatButton.icon(
              onPressed: () {
                delete();
              },
              icon: Icon(Icons.delete),
              label: Text('delete quoute'),
            )
          ],
        ),
      ),
    );
  }
}
