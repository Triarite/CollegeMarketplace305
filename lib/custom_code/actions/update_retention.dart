// Automatic FlutterFlow imports
import '/backend/backend.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// This action updates the user's retention metrics in Firestore using their email as the document ID. It sets lastLogin to the current timestamp, initializes firstLogin if missing, and calculates retention flags for day_1, day_7, and day_30 based on the time elapsed since firstLogin.
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future updateRetention() async {
  try {
    final user = FirebaseAuth.instance.currentUser;
    if (user?.email == null) return;

    final userEmail = user!.email!;
    final now = DateTime.now();

    final retentionRef = FirebaseFirestore.instance
        .collection('retention_metrics')
        .doc(userEmail);

    final retentionDoc = await retentionRef.get();

    if (retentionDoc.exists) {
      final data = retentionDoc.data() as Map<String, dynamic>;
      final firstLogin = (data['firstLogin'] as Timestamp?)?.toDate();

      if (firstLogin != null) {
        final daysSinceFirst = now.difference(firstLogin).inDays;

        await retentionRef.update({
          'lastLogin': Timestamp.fromDate(now),
          'day_1': daysSinceFirst >= 1,
          'day_7': daysSinceFirst >= 7,
          'day_30': daysSinceFirst >= 30,
        });
      } else {
        await retentionRef.update({
          'firstLogin': Timestamp.fromDate(now),
          'lastLogin': Timestamp.fromDate(now),
          'day_1': false,
          'day_7': false,
          'day_30': false,
        });
      }
    } else {
      await retentionRef.set({
        'email': userEmail,
        'firstLogin': Timestamp.fromDate(now),
        'lastLogin': Timestamp.fromDate(now),
        'day_1': false,
        'day_7': false,
        'day_30': false,
      });
    }
  } catch (e) {
    print('Error updating retention metrics: $e');
  }
}
