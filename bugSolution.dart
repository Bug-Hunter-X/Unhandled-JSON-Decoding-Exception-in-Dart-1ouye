```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        print(jsonData['someKey']);
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        rethrow; // Re-throw to allow the outer try-catch to handle it
      } catch (e) {
        print('Error processing JSON: $e');
        rethrow; // Re-throw to allow the outer try-catch to handle it
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching or processing data: $e');
  }
}
```