import 'package:flutter/material.dart';

void main() {
    runApp(MyApp());
}

// Stateless Widget
class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'App Contador',
            debugShowCheckedModeBanner: false,
            home: MyHomePage(),
        );
    }
}

// StatefulWidget
class MyHomePage extends StatefulWidget {
    @override
    _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

    int _counter = 0;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('App Contador')
            ),
            body: Center(
                child: Text('Numero: $_counter'),
            ),
            floatingActionButton: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                    FloatingActionButton(
                        backgroundColor: Colors.green,
                        child: Icon(Icons.keyboard_arrow_up),
                        onPressed: (){
                            setState((){
                                _counter++;
                            });
                            print('Numero: $_counter');
                        }
                    ),
                    SizedBox(width: 5),
                    FloatingActionButton(
                        backgroundColor: Colors.red,
                        child: Icon(Icons.keyboard_arrow_down),
                        onPressed: (){
                            setState((){
                                _counter--;
                            });
                            print('Numero: $_counter');
                        }
                    ),
                    SizedBox(width: 5),
                    FloatingActionButton(
                        child: Icon(Icons.exposure_zero),
                        onPressed: (){
                            setState((){
                                _counter = 0;
                            });
                            print('Numero: $_counter');
                        }
                    ),
                ],
            )
        );
    }
}
