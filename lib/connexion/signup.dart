import 'package:ecurie_flutter/main.dart';
import 'package:ecurie_flutter/connexion/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Card Examples')),
        body: Column(
          children: <Widget>[
            Spacer(),
            ElevatedCardExample(),
            Buttons(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class ElevatedCardExample extends StatelessWidget {
  ElevatedCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: SizedBox(
          width: 500,
          height: 300,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
                SizedBox(height: 20,), // Ajout d'un espacement entre les champs
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const IconData home = IconData(0xe318, fontFamily: 'MaterialIcons');
    const IconData accountCircleSharp = IconData(0xe743, fontFamily: 'MaterialIcons');
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()), 
              );
            },
            tooltip: 'Se connecter',
            child: Icon(home),
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()), 
              );
            },
            tooltip: 'Se connecter',
            child: Icon(accountCircleSharp),
          ),
        ],
      ),
    );
  }
}