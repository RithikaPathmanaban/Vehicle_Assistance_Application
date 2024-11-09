import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import '../utils/location_helper.dart';

class ReportBreakdownScreen extends StatefulWidget {
  @override
  _ReportBreakdownScreenState createState() => _ReportBreakdownScreenState();
}

class _ReportBreakdownScreenState extends State<ReportBreakdownScreen> {
  Position? _currentPosition;
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _issueDescriptionController =
      TextEditingController();
  final TextEditingController _vehicleTypeController = TextEditingController();
  final TextEditingController _vehicleModelController = TextEditingController();
  final TextEditingController _additionalIssuesController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    Position? position = await LocationHelper.getCurrentLocation();
    if (position != null) {
      setState(() {
        _currentPosition = position;
      });
    }
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Show SweetAlert-style confirmation dialog
      AwesomeDialog(
        context: context,
        dialogType: DialogType.success,
        animType: AnimType.scale,
        title: 'Request Sent!',
        desc: 'Your assistance request has been sent successfully.',
        btnOkOnPress: () {},
      ).show();

      print("Issue Description: ${_issueDescriptionController.text}");
      print("Vehicle Type: ${_vehicleTypeController.text}");
      print("Vehicle Model: ${_vehicleModelController.text}");
      print("Additional Issues: ${_additionalIssuesController.text}");
      if (_currentPosition != null) {
        print("Latitude: ${_currentPosition!.latitude}");
        print("Longitude: ${_currentPosition!.longitude}");
      } else {
        print("Location not available.");
      }
    }
  }

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
              "Report Breakdown",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          elevation: 100, // Clean look with shadow
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
        child: _currentPosition == null
            ? Center(child: CircularProgressIndicator())
            : Form(
                key: _formKey,
                child: ListView(
                  children: [
                    Text(
                      "Your Location: Latitude ${_currentPosition?.latitude ?? 'N/A'}, "
                      "Longitude ${_currentPosition?.longitude ?? 'N/A'}",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    _buildTextFormField(
                        "Describe the Issue",
                        _issueDescriptionController,
                        "Please describe the issue"),
                    SizedBox(height: 16),
                    _buildTextFormField("Vehicle Type", _vehicleTypeController,
                        "Please enter the vehicle type"),
                    SizedBox(height: 16),
                    _buildTextFormField(
                        "Vehicle Model",
                        _vehicleModelController,
                        "Please enter the vehicle model"),
                    SizedBox(height: 16),
                    _buildTextFormField("Additional Issues (if any)",
                        _additionalIssuesController, null),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: _submitForm,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(251, 229, 62, 62),
                        foregroundColor: Colors.white,
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Text("Request Assistance"),
                    ),
                  ],
                ),
              ),
      ),
    );
  }

  Widget _buildTextFormField(String labelText, TextEditingController controller,
      String? validationMessage) {
    return TextFormField(
      controller: controller,
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
      validator: validationMessage != null
          ? (value) {
              if (value == null || value.isEmpty) {
                return validationMessage;
              }
              return null;
            }
          : null,
    );
  }
}
