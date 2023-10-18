import "package:mongo_dart/mongo_dart.dart";
import 'dart:developer';
import 'constants.dart';

class MongoDatabase {
  static connect() async {
    print("rentré");
    var db = await Db.create(MONGO_URL);
    await db.open();
    inspect(db);
    var status = db.serverStatus();
    print(status);
    print("connecté");
    var collection = db.collection('Ecurie');
    print(await collection.find().toList());
  }
}