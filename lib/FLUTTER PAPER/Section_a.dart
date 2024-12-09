// Number 1(a)
// Flutter is Google's User Interface toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
// Mobile applications
// Web applications
// Desktop from a single codebase.

// Number 1(b)
	// •	Fast Development.	Hot Reload allows developers to see changes instantly without restarting the application.
	// •	Cross-Platform Development .Write once, deploy across Android, iOS, web, and desktop.
	// •	Rich UI and Customization.Includes pre-designed widgets for beautiful, consistent UIs.
	// •	Easy to customize widgets or create your own.
	// •	High Performance.Uses Dart, compiled to native ARM code for better performance.

// Number 1(c)


// Showcases Dart's object-oriented programming features

// Number 1(d)

	// Hot Reload. Quickly updates the UI with code changes without restarting the app.
	// Keeps the app’s current state intact (e.g., user inputs).

// Number 1(e)
		// Fast Development.	Hot Reload allows developers to see changes instantly without restarting the application.
	// Cross-Platform Development .Write once, deploy across Android, iOS, web, and desktop.
	// Rich User Interface and Customization.Includes pre-designed widgets for beautiful, consistent UIs.

  // Number 1(f)
//  A StatelessWidget is a widget that does not change over time. Once it is built, it remains the same unless the parent widget rebuilds it.
// These widgets are immutable and are used when the UI does not depend on any changes or user interactions.
// Example of StatelessWidget:
// A simple label or text element that does not change dynamically.

// A StatefulWidget is a widget that can change during its lifetime. This type of widget has mutable state, meaning it can rebuild its UI based on changes in its state.
// It requires a State class that holds the mutable state.
// Example of StatefulWidget:
// A counter button that increments a value every time the button is pressed.

// When to Use Each:
// StatelessWidget: Use it when the widget does not need to change dynamically. Examples include static text, images, and icons that do not depend on user input.
// StatefulWidget: Use it when the widget's state will change. For example, when user input is required (like form fields), dynamic lists, animations, or data that updates on a timer.

// Number 1(g)
import 'package:flutter/foundation.dart';

int sum(int a, int b) {
  return a + b;
}
void main() {
  int result = add(5, 7); 
  print('The sum is: $result'); 
}


 // Number 1(h)
void checkEvenOrOdd(int number) {
  if (number % 2 == 0) {
    print('$number is even.');
  } else {
    print('$number is odd.');
  }
}

   // Number 1(i)
void main() {
  checkEvenOdd(5); // Example usage
}
 void map() {
  Map<String, String> names = {
    'name1': 'Alice',
    'name2': 'Bob',
    'name3': 'Charlie'
  };

  names.forEach((key, value) {
    if (kDebugMode) {
      print('$key: $value');
    }
  });
}


   