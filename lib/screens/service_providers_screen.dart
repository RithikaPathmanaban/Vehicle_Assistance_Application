import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ServiceProvidersScreen extends StatelessWidget {
  final List<Map<String, String>> providers = [
    {
      'name': 'ABC Auto Repair',
      'phone': '1234567890',
      'location': 'https://maps.google.com/?q=ABC+Auto+Repair'
    },
    {
      'name': 'XYZ Car Service',
      'phone': '0987654321',
      'location': 'https://maps.google.com/?q=XYZ+Car+Service'
    },
  ];

  Future<void> _makePhoneCall(String phone) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phone);
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    } else {
      throw 'Could not call $phone';
    }
  }

  Future<void> _openMap(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
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
                "Service providers",
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
      body: ListView.builder(
        itemCount: providers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              providers[index]['name']!,
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(providers[index]['phone']!),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.call),
                  onPressed: () => _makePhoneCall(providers[index]['phone']!),
                ),
                IconButton(
                  icon: Icon(Icons.map),
                  onPressed: () => _openMap(providers[index]['location']!),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
