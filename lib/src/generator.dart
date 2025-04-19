import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';

/// A class for generating unique identifiers with customizable options.
class UniqueIdGenerator {
  /// Generates a random unique ID with an optional prefix and specified length.
  ///
  /// [prefix]: An optional string to prepend to the ID.
  /// [length]: The length of the random part of the ID (excluding prefix). Defaults to 16.
  /// Returns a string ID.
  static String generateRandomId({String prefix = '', int length = 16}) {
    if (length < 1) throw ArgumentError('Length must be at least 1');

    const String chars =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final Random random = Random.secure();
    final String randomPart =
        List.generate(length, (_) => chars[random.nextInt(chars.length)])
            .join();

    return '$prefix$randomPart';
  }

  /// Generates a timestamp-based unique ID with an optional prefix.
  ///
  /// [prefix]: An optional string to prepend to the ID.
  /// Returns a string ID combining the timestamp and a hashed component.
  static String generateTimestampId({String prefix = ''}) {
    final DateTime now = DateTime.now();
    final String timestamp = now.millisecondsSinceEpoch.toString();

    // Add a random component to ensure uniqueness even for same timestamp
    final Random random = Random.secure();
    final String randomComponent =
        random.nextInt(9999).toString().padLeft(4, '0');

    // Create a hash for additional uniqueness
    final String input = '$timestamp$randomComponent';
    final String hash =
        md5.convert(utf8.encode(input)).toString().substring(0, 8);

    return '$prefix$timestamp-$hash';
  }
}
