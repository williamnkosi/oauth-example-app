import 'package:flutter/material.dart';
import 'package:flutter_appauth/flutter_appauth.dart';

class AppAuthPage extends StatefulWidget {
  AppAuthPage({Key? key}) : super(key: key);

  @override
  State<AppAuthPage> createState() => _AppAuthPageState();
}

class _AppAuthPageState extends State<AppAuthPage> {
  final FlutterAppAuth _appAuth = FlutterAppAuth();
  final String _clientId = "";
  final String _redirectUrl = "";
  final String _issuer = "";

  final AuthorizationServiceConfiguration _serviceConfiguration =
      const AuthorizationServiceConfiguration(
    authorizationEndpoint: 'https://demo.identityserver.io/connect/authorize',
    tokenEndpoint: 'https://demo.identityserver.io/connect/token',
    endSessionEndpoint: 'https://demo.identityserver.io/connect/endsession',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("App Auth Plugin")),
      body: Center(
        child: Column(children: [
          MaterialButton(
            child: Text("Login"),
            color: Colors.blue,
            onPressed: _authSignIn,
          )
        ]),
      ),
    );
  }

  Future<void> _authSignIn() async {
    try {
      final authorizationTokenRequest = AuthorizationTokenRequest(
          _clientId, _redirectUrl,
          serviceConfiguration: _serviceConfiguration);
      final AuthorizationTokenResponse? result =
          await _appAuth.authorizeAndExchangeCode(authorizationTokenRequest);

      if (result != null) {
      } else {}
    } catch (e) {
      print("-------------->");
      print(e);
    }
  }
}
