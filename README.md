# Unhandled JSON Decoding Exception in Dart

This repository demonstrates a common error in Dart applications involving asynchronous network requests and JSON parsing. The original code lacks proper exception handling for JSON decoding, potentially leading to crashes. The solution showcases best practices for robust error handling.

## Bug Description
The `fetchData` function makes a network request and parses the JSON response.  It uses a general `catch` block, which makes debugging difficult.  The `jsonDecode` function might throw a FormatException if the response isn't valid JSON.  The solution will catch and handle the FormatException specifically.