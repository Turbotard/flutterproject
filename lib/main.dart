import 'package:ecurie_flutter/connexion/login.dart';
import 'package:ecurie_flutter/connexion/signup.dart';
import 'package:flutter/material.dart';
import 'db/db.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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

  @override
  Widget build(BuildContext context) {
  const IconData accountCircleSharp = IconData(0xe743, fontFamily: 'MaterialIcons');
  const IconData account_circle_outlined = IconData(0xee35, fontFamily: 'MaterialIcons');

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
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
          SizedBox(width: 16),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()), 
              );
            },
            tooltip: 'Créer un compte',
            child: Icon(account_circle_outlined),
          ),
        ],
      ),
    );
  }
}
