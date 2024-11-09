import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class MechanicHomeScreen extends StatelessWidget {
  final List<String> requests = [
    "Request #1 - Car Breakdown at Anna nagar",
    "Request #2 - Car Engine Issue near East mogapair",
    "Request #3 - Flat Tire at Taramani",
  ];

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
              "Mechanic",
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
        child: requests.isEmpty
            ? Center(child: Text("No requests available"))
            : ListView.builder(
                itemCount: requests.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(12), // Rounded corners
                    ),
                    elevation: 5, // Shadow effect
                    color: Colors.grey.shade100, // Light background color
                    child: ListTile(
                      title: Text(
                        requests[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      subtitle: Text(
                        "Click to assist",
                        style: TextStyle(color: Colors.black54),
                      ),
                      trailing:
                          Icon(Icons.arrow_forward_ios, color: Colors.red),
                      onTap: () {
                        // Show AwesomeDialog with success message
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.success,
                          animType: AnimType.scale,
                          title: 'Request Confirmation',
                          desc:
                              'Your confirmation for Request #${index + 1} is sent successfully',
                          btnOkOnPress: () {},
                        ).show();
                      },
                    ),
                  );
                },
              ),
      ),
    );
  }
}
