import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {

    // Simulate network request for username
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'Tiger';
    });

    // Simulate network request to get bio of the username.
    String bio = await Future.delayed(Duration(seconds: 2,), () {
      return 'Singer, coder & adventerous';
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Loading Screen."),
    );
  }
}
