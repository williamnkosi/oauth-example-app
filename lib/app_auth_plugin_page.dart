import 'package:flutter/material.dart';

class AppAuthPage extends StatefulWidget {
  AppAuthPage({Key? key}) : super(key: key);

  @override
  State<AppAuthPage> createState() => _AppAuthPageState();
}

class _AppAuthPageState extends State<AppAuthPage> {
  final String _clientId = "";
  final String _redirectUrl = "";
  final String _issuer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("App Auth Plugin")),
      body: Column(children: []),
    );
  }
}
