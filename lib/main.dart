import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_trial/counter.dart';

void main() {
  mainContext.onReactionError((error, reaction) {
    print("onReactionError: $error");
  });

  FlutterError.onError = (details) {
    print("FlutterError.onError: $details");
  };

  runZonedGuarded(() => runApp(const MyApp()), (error, stack) {
    WidgetsFlutterBinding.ensureInitialized();
    print("Guarded onError: $error");
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final store = Counter();

  @override
  void initState() {
    reaction((_) => store.value, (_) {
      store.async2();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: store.incrementAsync,
              child: Text("Async"),
            ),
          ],
        ),
      ),
    );
  }

}
