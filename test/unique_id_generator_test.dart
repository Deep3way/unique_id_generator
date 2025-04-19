import 'package:test/test.dart';
import 'package:unique_id_generator/unique_id_generator.dart';

void main() {
  group('UniqueIdGenerator', () {
    test('generateRandomId creates ID with correct prefix and length', () {
      final id =
          UniqueIdGenerator.generateRandomId(prefix: 'user_', length: 10);
      expect(id.startsWith('user_'), isTrue);
      expect(id.length, equals(15)); // 5 for prefix + 10 for random part
    });

    test('generateRandomId throws error for invalid length', () {
      expect(() => UniqueIdGenerator.generateRandomId(length: 0),
          throwsArgumentError);
    });

    test('generateTimestampId creates ID with correct prefix', () {
      final id = UniqueIdGenerator.generateTimestampId(prefix: 'session_');
      expect(id.startsWith('session_'), isTrue);
      expect(
          id.contains('-'), isTrue); // Should contain timestamp-hash separator
    });

    test('generateRandomId produces unique IDs', () {
      final id1 = UniqueIdGenerator.generateRandomId(length: 10);
      final id2 = UniqueIdGenerator.generateRandomId(length: 10);
      expect(id1, isNot(equals(id2)));
    });
  });
}
