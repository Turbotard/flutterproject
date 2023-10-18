import "package:mongo_dart/mongo_dart.dart";
import 'dart:developer';
import 'constants.dart';

class MongoDatabase {
  static connect() async {
    try {
      print("rentré");
      var db = await Db.create(MONGO_URL);
      await db.open();
      inspect(db);

      var status = await db.serverStatus();
      print(status);
      print("connecté");

      var collection = db.collection('users');
      var documents = await collection.find().toList();
      if (documents.isEmpty) {
        print("La collection 'users' est vide.");
      } else {
        print(documents);
      }

    } catch (e) {
      print('Erreur lors de la connexion à la base de données: $e');
    }
  }
}
