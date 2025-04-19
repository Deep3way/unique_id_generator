Unique ID Generator 🚀

A Dart library for generating unique identifiers with customizable prefixes and lengths. It supports
both random-based and timestamp-based ID generation, making it suitable for database records, user
sessions, or other unique identifier needs.

## Features ✨

- 🆔 Generate random unique IDs with customizable prefixes and lengths.
- ⏰ Generate timestamp-based unique IDs with a hashed component for uniqueness.
- 🪶 Lightweight and dependency-minimal (only uses `crypto` for hashing).
- 🧪 Fully tested with unit tests.

## Installation 📦

Add the following to your `pubspec.yaml`:

```yaml
dependencies:
  unique_id_generator: ^1.0.0
```

Then run:

```bash
dart pub get
```

## Usage 🛠️

```dart
import 'package:unique_id_generator/unique_id_generator.dart';

void main() {
  // Generate a random ID
  final randomId = UniqueIdGenerator.generateRandomId(prefix: 'user_', length: 12);
  print('Random ID: $randomId'); // e.g., user_aB7x9pL2qW8

  // Generate a timestamp-based ID
  final timestampId = UniqueIdGenerator.generateTimestampId(prefix: 'session_');
  print('Timestamp ID: $timestampId'); // e.g., session_1634567890123-4a8b2c1d
}
```

## Usage Roadmap 🗺️

The following features and improvements are planned for future releases:

- 🔢 **Custom Character Sets**: Allow users to define custom character sets for random ID
  generation (e.g., numeric-only or alphanumeric).
- 🛡️ **Enhanced Security**: Add options for cryptographically secure random IDs using additional
  algorithms.
- 📚 **Extended Documentation**: Provide more examples and use cases, including integration with
  Flutter apps.
- ⚙️ **Configuration Options**: Introduce a configuration class to set global defaults for prefixes
  and lengths.
- 🌐 **Localization Support**: Add support for localized timestamp formats in timestamp-based IDs.

## Running Tests ✅

To run the tests, use:

```bash
dart test
```

## Contributing 🤝

Contributions are welcome! Please open an issue or submit a pull request on GitHub.

## License 📜

MIT License