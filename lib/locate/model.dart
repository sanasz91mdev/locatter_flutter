import 'dart:async';
import 'package:firestore_helpers/firestore_helpers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Branch {
  String area;
  GeoPoint location;

  Branch({this.area, this.location});
}

class BranchStore {
  final Firestore firestore;

  Stream<List<Branch>> todos() {
    return firestore.collection(path).snapshots().map((snapshot) {
      return snapshot.documents.map((doc) {
        return Branch(
          area: doc['Area'],
          location: doc['location'] ?? '',
        );
      }).toList();
    });
  }

  Stream<List<Branch>> getEvents({List<QueryConstraint> constraints}) {
    try {
      Query query = buildQuery(collection: eventCollection, constraints: constraints);
      return getDataFromQuery(
          query: query,
          mapper: (eventDoc) {
            var event = _eventSerializer.fromMap(eventDoc.data);
            event.id = eventDoc.documentID;
            return event;
          },
          clientSitefilters: (event) => event.startTime > DateTime.now()  // only future events
          orderComparer: (event1, event2) => event1.name.compareTo(event2.name)
    );
    } on Exception catch (ex) {
    print(ex);
    }
    return null;
  }
