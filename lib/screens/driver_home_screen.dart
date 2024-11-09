import 'package:flutter/material.dart';
import 'package:vehicle_mehanic/screens/report_breakdown_screen.dart';
import 'package:vehicle_mehanic/screens/service_providers_screen.dart';

class DriverHomeScreen extends StatelessWidget {
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
                "HOME",
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
      body: Center(
        // Center the content
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Report Breakdown Card
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ReportBreakdownScreen()),
                  );
                },
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: 300,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(251, 229, 62, 62),
                    ),
                    child: Center(
                      child: Text(
                        'Report Breakdown',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20), // Add space between cards
              // View Service Providers Card
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ServiceProvidersScreen()),
                  );
                },
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: 300,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(251, 229, 62, 62),
                    ),
                    child: Center(
                      child: Text(
                        'View Service Providers',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
