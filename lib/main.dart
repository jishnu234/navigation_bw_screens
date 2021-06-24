import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation',
    // initialRoute: '/',
    initialRoute: '/',
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Next'),
          onPressed: () {
            Navigator.of(context).pushNamed('/second',
            arguments: 'Hello Jishnu from first page');
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key, required this.args}) : super(key: key);

  final String args;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Container(
       child:
          Center(
            child: Text(
              args,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
            ),
          ), 
      ),
    );
  }
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    final args = settings.arguments;

    switch(settings.name) {
      case '/':
      return MaterialPageRoute(builder: (_) => FirstRoute());
      case '/second': 
      if(args is String) {
        return MaterialPageRoute(
          builder: (_) => SecondRoute(args: args)
        );
      }

      return _errorRoute();

      default: 
      return _errorRoute();
    }
  }

 static Route<dynamic> _errorRoute() {
   return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(title: Text('Error'),),
        body: Center(
          child: Text('ERROR'),
        )
      );
   });
 }
}


