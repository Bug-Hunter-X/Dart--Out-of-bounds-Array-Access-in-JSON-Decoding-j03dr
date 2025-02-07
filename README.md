# Dart: Out-of-bounds Array Access in JSON Decoding

This repository demonstrates a common error in Dart: attempting to access an array element without first checking that the index is within the bounds of the array.  This often occurs when parsing JSON data where the structure of the data may be unpredictable.

The `bug.dart` file contains the code with the error. The `bugSolution.dart` file provides a corrected version.

## Bug Description
The bug arises from accessing `data[10]` within the JSON decoding process. If the JSON response contains fewer than 11 elements, this will result in an `RangeError` exception.