import 'package:flutter/material.dart';
import 'package:vehicle_mehanic/screens/driver_home_screen.dart';
import 'package:vehicle_mehanic/screens/driver_login_screen.dart';

class DriverSignUpScreen extends StatefulWidget {
  @override
  _DriverSignUpScreenState createState() => _DriverSignUpScreenState();
}

class _DriverSignUpScreenState extends State<DriverSignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60), // Custom height for the AppBar
        child: AppBar(
            iconTheme: IconThemeData(
              color: Colors.white, // Set the back arrow color to white
            ),
            title: Center(
              child: Text(
                "Driver Signup",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight:
                        FontWeight.bold), // Increase font size if needed
              ),
            ),
            elevation: 100, // Remove shadow for a clean look
            backgroundColor: const Color.fromARGB(255, 106, 3, 3),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(150),
              bottomLeft: Radius.circular(150),
            ))),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                // Name field
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DriverLoginScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        251, 229, 62, 62), // Set the text color here
                    foregroundColor: Colors.white,
                  ),
                  child: Text("Already have an account? Login as Driver"),
                ),

                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black), // Set the border color to black
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .black), // Border color when field is enabled
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 2), // Border color when field is focused
                    ),
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter your name' : null,
                ),
                SizedBox(height: 16), // Add space between fields

                // Mobile Number field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Mobile Number',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black), // Set the border color to black
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .black), // Border color when field is enabled
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 2), // Border color when field is focused
                    ),
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter your mobile number' : null,
                ),
                SizedBox(height: 16),

                // Email field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black), // Set the border color to black
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .black), // Border color when field is enabled
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 2), // Border color when field is focused
                    ),
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter your email' : null,
                ),
                SizedBox(height: 16),

                // Password field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black), // Set the border color to black
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .black), // Border color when field is enabled
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 2), // Border color when field is focused
                    ),
                  ),
                  obscureText: true,
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter your password' : null,
                ),
                SizedBox(height: 16),

                // Confirm Password field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black), // Set the border color to black
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .black), // Border color when field is enabled
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 2), // Border color when field is focused
                    ),
                  ),
                  obscureText: true,
                  validator: (value) =>
                      value!.isEmpty ? 'Please confirm your password' : null,
                ),
                SizedBox(height: 16),

                // Vehicle Brand field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Vehicle Brand',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black), // Set the border color to black
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .black), // Border color when field is enabled
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 2), // Border color when field is focused
                    ),
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter your vehicle brand' : null,
                ),
                SizedBox(height: 16),

                // Vehicle Registration Number field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Vehicle Registration Number',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black), // Set the border color to black
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .black), // Border color when field is enabled
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 2), // Border color when field is focused
                    ),
                  ),
                  validator: (value) => value!.isEmpty
                      ? 'Please enter your vehicle registration number'
                      : null,
                ),
                SizedBox(height: 16),

                // Vehicle Model field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Vehicle Model',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black), // Set the border color to black
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .black), // Border color when field is enabled
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 2), // Border color when field is focused
                    ),
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter your vehicle model' : null,
                ),
                SizedBox(height: 16),

                // Sign Up Button
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Handle sign-up logic
                      // After successful sign-up, navigate to DriverHomeScreen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DriverHomeScreen()),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(251, 229, 62, 62),
                    foregroundColor:
                        Colors.white, // Set the text color to white
                    padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 30), // Add padding for better spacing
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8)), // Rounded corners
                  ),
                  child: Text('Sign Up'),
                ),

                SizedBox(height: 16),

                // Login Button
              ],
            ),
          ),
        ),
      ),
    );
  }
}
