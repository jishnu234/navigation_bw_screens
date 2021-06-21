
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation',
    // initialRoute: '/',
    home: FirstRoute(),
    routes: {
      '/second': (_) => SecondRoute(),
    },));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('First Page'),
        ),
        body: Center(
          child: ElevatedButton(child: Text('Next'),
          onPressed: () {
            Navigator.of(context).pushNamed('/second');
          },),
        ),
      );
  }
}


class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Second Page'),
        ),
        body: Center(
          child: ElevatedButton(child: Text('back'),
          onPressed: () {
            Navigator.pop(context);
          },),
        ),);
  }
}

