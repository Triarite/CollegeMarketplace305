import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:ff_commons/flutter_flow/lat_lng.dart';
import 'package:ff_commons/flutter_flow/place.dart';
import 'package:ff_commons/flutter_flow/uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? convertStringToImagePath(String? imageUrl) {
  if (imageUrl == null || imageUrl.isEmpty) {
    return null; // Return null if the URL is empty
  }
  return imageUrl; // Return the image URL as the Image Path type
}

double? getAverageFromIntList(List<int>? listOfRatings) {
  // Take a list of integers and return a double of the average of those integers
  if (listOfRatings == null || listOfRatings.isEmpty) {
    return 0; // Return 0 if the list is empty or null
  }

  double sum = 0;
  for (int rating in listOfRatings) {
    sum += rating; // add to sum
  }

  return sum / listOfRatings.length; // Return the average
}
