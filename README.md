# Unhandled JSON Exception in Dart HTTP Request

This repository demonstrates a common error in Dart when working with asynchronous HTTP requests and JSON parsing. The code fetches data from an API, parses the JSON response, and then attempts to access specific fields within the JSON structure. However, it doesn't properly handle potential exceptions that might arise if the JSON data is malformed or missing expected keys.

The `bug.dart` file contains the erroneous code, while `bugSolution.dart` provides a corrected version with improved error handling.  This improved version uses type checking and explicit error handling for a more robust solution.

## How to reproduce the bug:

1. Clone this repository.
2. Run `bug.dart`.  If the API returns malformed JSON or lacks the expected 'name' key, you'll see a generic error message.

## Solution:

The `bugSolution.dart` file shows the improved solution. It adds the following improvements:
* More specific exception handling:
* Type checking to ensure data is in the expected format before accessing it. 
* Clearer error messages to help debugging.
