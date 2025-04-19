import 'package:unique_id_generator/unique_id_generator.dart';

void main() {
  // Generate a random ID
  final randomId =
      UniqueIdGenerator.generateRandomId(prefix: 'user_', length: 12);
  print('Random ID: $randomId');

  // Generate a timestamp-based ID
  final timestampId = UniqueIdGenerator.generateTimestampId(prefix: 'session_');
  print('Timestamp ID: $timestampId');
}
