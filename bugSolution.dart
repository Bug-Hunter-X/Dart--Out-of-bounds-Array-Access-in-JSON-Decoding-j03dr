```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      // Check if the index is within the bounds
      if (data.length > 10) {
        final element = data[10];
        print(element);
      } else {
        print('Index out of bounds'); // Handle the case gracefully
      }
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```