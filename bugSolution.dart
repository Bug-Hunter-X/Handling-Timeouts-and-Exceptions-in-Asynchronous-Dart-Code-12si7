```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate an asynchronous operation that might fail
    await Future.delayed(Duration(seconds: 2));
    //throw Exception('Network request failed');
    print('Data fetched successfully!');
  } on TimeoutException catch (e) {
    print('Request timed out: $e');
  } on Exception catch (e) {
    print('An error occurred: $e');
    rethrow; // Re-throw the exception to be handled further up the call stack
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}

void main() async {
  try{
    await fetchData();
  } catch(e){
    print("Error in main function: "+ e.toString());
  }
  print('Program execution continues...');
}
```