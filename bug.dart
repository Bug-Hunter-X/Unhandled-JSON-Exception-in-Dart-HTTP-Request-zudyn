```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON
      final jsonData = jsonDecode(response.body);
      // Accessing data, assuming it's a list
      for (var item in jsonData) {
        print(item['name']); // Potential error if 'name' key is missing
      }
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e'); // Catches the exception but doesn't specify the type
  }
}
```