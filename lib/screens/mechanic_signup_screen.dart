import 'package:flutter/material.dart';
import 'package:vehicle_mehanic/screens/mechanic_home_screen.dart';
import 'package:vehicle_mehanic/screens/mechanic_login_screen.dart';

class MechanicSignUpScreen extends StatefulWidget {
  @override
  _MechanicSignUpScreenState createState() => _MechanicSignUpScreenState();
}

class _MechanicSignUpScreenState extends State<MechanicSignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white, // Set the back arrow color to white
          ),
          title: Center(
            child: Text(
              "Mechanic Signup",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          elevation: 100,
          backgroundColor: const Color.fromARGB(255, 106, 3, 3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(150),
              bottomLeft: Radius.circular(150),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MechanicLoginScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        251, 229, 62, 62), // Set the text color here
                    foregroundColor: Colors.white,
                  ),
                  child: Text("Already have an account? Login as Mechanic"),
                ),
                SizedBox(height: 10),
                _buildTextFormField("Name", "Please enter your name"),
                SizedBox(height: 16),
                _buildTextFormField(
                    "Mobile Number", "Please enter your mobile number"),
                SizedBox(height: 16),
                _buildTextFormField("Email", "Please enter your email"),
                SizedBox(height: 16),
                _buildTextFormField("Password", "Please enter your password",
                    obscureText: true),
                SizedBox(height: 16),
                _buildTextFormField(
                    "Confirm Password", "Please confirm your password",
                    obscureText: true),
                SizedBox(height: 16),
                _buildTextFormField("Shop Name", "Please enter your shop name"),
                SizedBox(height: 16),
                _buildTextFormField(
                    "Shop Details", "Please enter shop details"),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MechanicHomeScreen()),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(251, 229, 62, 62),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Text('Sign Up', style: TextStyle(fontSize: 18)),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFormField(String labelText, String validationMessage,
      {bool obscureText = false}) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.black),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validationMessage;
        }
        return null;
      },
    );
  }
}
