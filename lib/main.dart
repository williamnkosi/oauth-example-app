import 'package:flutter/material.dart';
import 'package:oauth_example_app/app_auth_plugin_page.dart';
import 'package:oauth_example_app/fusion_auth_plugin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fusion Auth Test App")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AppAuthPage()));
            },
            color: Colors.blue,
            textColor: Colors.white,
            child: const Text("Flutter App Auth Plugin"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FusionAuthPage()));
            },
            color: Colors.blue,
            textColor: Colors.white,
            child: const Text("Fusion Auth Plugin"),
          )
        ],
      )),
    );
  }
}
