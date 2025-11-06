import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NpsResponsesRecord extends FirestoreRecord {
  NpsResponsesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "score" field.
  int? _score;
  int get score => _score ?? 0;
  bool hasScore() => _score != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "Question2" field.
  String? _question2;
  String get question2 => _question2 ?? '';
  bool hasQuestion2() => _question2 != null;

  // "userEmail" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  bool hasUserEmail() => _userEmail != null;

  // "nps_bucket" field.
  String? _npsBucket;
  String get npsBucket => _npsBucket ?? '';
  bool hasNpsBucket() => _npsBucket != null;

  void _initializeFields() {
    _score = castToType<int>(snapshotData['score']);
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _question2 = snapshotData['Question2'] as String?;
    _userEmail = snapshotData['userEmail'] as String?;
    _npsBucket = snapshotData['nps_bucket'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nps_responses');

  static Stream<NpsResponsesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NpsResponsesRecord.fromSnapshot(s));

  static Future<NpsResponsesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NpsResponsesRecord.fromSnapshot(s));

  static NpsResponsesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NpsResponsesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NpsResponsesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NpsResponsesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NpsResponsesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NpsResponsesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNpsResponsesRecordData({
  int? score,
  DateTime? timestamp,
  String? question2,
  String? userEmail,
  String? npsBucket,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'score': score,
      'timestamp': timestamp,
      'Question2': question2,
      'userEmail': userEmail,
      'nps_bucket': npsBucket,
    }.withoutNulls,
  );

  return firestoreData;
}

class NpsResponsesRecordDocumentEquality
    implements Equality<NpsResponsesRecord> {
  const NpsResponsesRecordDocumentEquality();

  @override
  bool equals(NpsResponsesRecord? e1, NpsResponsesRecord? e2) {
    return e1?.score == e2?.score &&
        e1?.timestamp == e2?.timestamp &&
        e1?.question2 == e2?.question2 &&
        e1?.userEmail == e2?.userEmail &&
        e1?.npsBucket == e2?.npsBucket;
  }

  @override
  int hash(NpsResponsesRecord? e) => const ListEquality()
      .hash([e?.score, e?.timestamp, e?.question2, e?.userEmail, e?.npsBucket]);

  @override
  bool isValidKey(Object? o) => o is NpsResponsesRecord;
}
