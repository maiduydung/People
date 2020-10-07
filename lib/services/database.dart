import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  // reference to user collection
  final CollectionReference userCollection =
      Firestore.instance.collection('users');
}
