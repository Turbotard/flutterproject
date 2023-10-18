import 'package:ecurie_flutter/main.dart';
import 'package:flutter/material.dart';
import 'package:ecurie_flutter/connexion/signup.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

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
    const IconData home = IconData(0xe318, fontFamily: 'MaterialIcons');
    const IconData account_circle_outlined =
        IconData(0xee35, fontFamily: 'MaterialIcons');

    return Center(
      child: Card(
        child: SizedBox(
          width: 350,
          height: 240,
          child: Center(
            child:
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
              SizedBox(
                height: 20,
              ), // Ajout d'un espacement entre les champs
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
                child: Text(
                  "Forgot password ?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              ),
            ]),
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
            child: Icon(Icons.home), // Utilisation de l'icône prédéfinie
          ),
          SizedBox(width: 20), // Espacement entre les boutons
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
            tooltip: 'Créer un compte',
            child: Icon(Icons.account_circle_outlined), // Utilisation de l'icône prédéfinie
          ),
        ],
      ),
    );
  }
}