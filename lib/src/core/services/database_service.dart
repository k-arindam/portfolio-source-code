import 'package:cloud_firestore/cloud_firestore.dart';

mixin DatabaseService {
  final _projectsDB = FirebaseFirestore.instance.collection("projects");

  Future<dynamic> fetchProjects() async => (await _projectsDB.get()).docs;
}
