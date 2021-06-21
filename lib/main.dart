import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation',
    home:FirstRoute() ,));
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
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => SecondRoute()));
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
          child: ElevatedButton(child: Text('Back'),
          onPressed: () {
            Navigator.pop(context);
          },),
        ),);
  }
}
