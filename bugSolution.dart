```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List<dynamic>;
      for (final item in jsonData) {
        if(item is Map && item.containsKey('name')){
          print(item['name']);
        } else {
          print('Invalid JSON format encountered.');
        }
      }
    } else {
      throw Exception('Request failed with status: ${response.statusCode}.');
    }
  } on FormatException catch (e) {
    print('Error: Invalid JSON format - $e');
  } on http.ClientException catch (e) {
    print('Error: HTTP request failed - $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```