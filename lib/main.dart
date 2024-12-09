// QUESTION_2

// Create a login screen with the following 
// Two Textfield widgets for username and password input .the placeholder for the username field must have your full names
// A raised button or elevated button labelled login
// When the login button is pressed navigate to home screen containing your full name and registration number centered.(No form validations required)


// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Login App',
//       initialRoute: '/',
//       debugShowCheckedModeBanner: false, // Remove the debug banner
//       routes: {
//         '/': (context) => const LoginScreen(),
//         '/home': (context) => HomeScreen(),
//       },
//     );
//   }
// }

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Login Screen'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             // Username TextField
//             const TextField(
//               decoration: InputDecoration(
//                 labelText: 'Username',
//                 hintText: 'Your Full Name', // Placeholder for username
//               ),
//             ),
//             const SizedBox(height: 20),
//             // Password TextField
//             const TextField(
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 hintText: 'Enter your password', // Placeholder for password
//               ),
//               obscureText: true, // To hide the password text
//             ),
//             const SizedBox(height: 40),
//             // Elevated Button to Login
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to the HomeScreen on button press
//                 Navigator.pushNamed(context, '/home');
//               },
//               child: const Text('Login'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Screen'),
//       ),
//       body: const Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             // Display Full Name and Registration Number
//             Text(
//               'Full Name: NAMUDDU MARIAM', // Replace with your full name
//               style: TextStyle(fontSize: 24),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Registration Number: 2023/DCSE/00105/SS', // Replace with your registration number
//               style: TextStyle(fontSize: 24),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// QUESTION_3
// Redesign the provided mockup screen using flutter .Focus on replicating the layouts, styling and overall design as closely as possible
// this will test your under standing of flutter widgets layouts and UI design principles . Recreate a mockup screen using appropriate flutter widgets (container,row,column,stack)
// Ensure that colours typography, spacing, and alignment match the mockups

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Description',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PlantDescriptionScreen(),
    );
  }
}

class PlantDescriptionScreen extends StatelessWidget {
  const PlantDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                // Navigate back (optional action)
              },
            ),
            const Text(
              'Details',
              style: TextStyle(fontSize: 20),
            ),
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {
                // Handle favorite action (optional)
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: Center(
                child: Image.network(
                  'data:image/jpeg;base64,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', // Replace with your image URL
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ageratum',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.blue,
                    size: 20,
                  ),
                  SizedBox(width: 4),
                  Text('4.8 (268 Reviews)'),
                ],
              ),
            ),
            // Description Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Ageratum is a genus of 40 to 60 tropical and warm temperature flowering annuals and perennials from the family Asteraceae, tribe Eupatorieae. Most species are native to Central America ...',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Size:', style: TextStyle(fontSize: 12)),
                      Text('Medium', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Plant:', style: TextStyle(fontSize: 12)),
                      Text('Orchid', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Height:', style: TextStyle(fontSize: 12)),
                      Text('12.6"', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Humidity:', style: TextStyle(fontSize: 12)),
                      Text('82%', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Price: \$39.99',
                    style: TextStyle(fontSize: 16),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle add to cart action
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text('Add to Cart'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
