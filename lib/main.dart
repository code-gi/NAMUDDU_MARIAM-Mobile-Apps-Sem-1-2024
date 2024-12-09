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
    return const MaterialApp(
      title: 'Flower Vase with Images',
      debugShowCheckedModeBanner: false,
      home: FlowerVaseScreen(),
    );
  }
}

class FlowerVaseScreen extends StatelessWidget {
  const FlowerVaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flower Vase with Images'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Petals
            for (int i = 0; i < 6; i++)
              Transform.rotate(
                angle: i * (60 * 3.14159 / 180), // Rotate petals evenly
                child: Image.asset(
                  'assets/images/petal.png', // Path to the petal image
                  height: 100,
                  width: 50,
                ),
              ),

            // Center of the Flower
            Image.asset(
              'assets/images/flower_center.png', // Path to flower center image
              height: 50,
              width: 50,
            ),

            // Stem
            Positioned(
              top: 200,
              child: Container(
                height: 150,
                width: 10,
                decoration: BoxDecoration(
                  color: Colors.green, // Stem color
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            // Left Leaf
            Positioned(
              top: 250,
              left: -40,
              child: Transform.rotate(
                angle: -0.5,
                child: Container(
                  height: 60,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.green, // Leaf color
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),

            // Right Leaf
            Positioned(
              top: 250,
              right: -40,
              child: Transform.rotate(
                angle: 0.5,
                child: Container(
                  height: 60,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.green, // Leaf color
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),

            // Vase
            Positioned(
              bottom: 0,
              child: Image.network(
                'assets/images/vase.png', // Path to vase image
                height: 200,
                width: 120,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

