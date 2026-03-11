import 'package:flutter/material.dart';

class AboutCBTSLiveScreen extends StatelessWidget {
  const AboutCBTSLiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About CBTS Live"),
        backgroundColor: const Color(0xFF6A11CB),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // App Logo / Icon
            Center(
              child: Column(
                children: const [
                  Icon(
                    Icons.directions_bus,
                    size: 80,
                    color: Color(0xFF6A11CB),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "CBTS Live",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // About Section
            const Text(
              "About CBTS Live",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "CBTS Live is a smart bus tracking application designed to help passengers easily locate buses, check routes, and view nearby bus stops in real-time. "
              "This system improves public transportation experience by providing accurate information about buses and routes.",
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 25),

            const Text(
              "How to Use the App",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            buildPoint(Icons.location_on,
                "Search Bus Stop Near Me",
                "Find nearby bus stops using your current location."),

            buildPoint(Icons.compare_arrows,
                "Search Between Locations",
                "Check buses running between two selected locations."),

            buildPoint(Icons.directions_bus,
                "Track Bus",
                "Track the live location of buses on the map."),

            buildPoint(Icons.warning,
                "Emergency",
                "Quick access to emergency contacts during travel."),

            buildPoint(Icons.feedback,
                "Customer Feedback",
                "Send feedback to improve bus services."),

            const SizedBox(height: 25),

            const Text(
              "Need Help?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            buildPoint(Icons.help,
                "If the app is not loading",
                "Check your internet connection and restart the app."),

            buildPoint(Icons.map,
                "If location is not working",
                "Enable location permission from phone settings."),

            buildPoint(Icons.support_agent,
                "Contact Support",
                "Contact the transport support team for assistance."),

            const SizedBox(height: 30),

            Center(
              child: Column(
                children: const [
                  Icon(Icons.star, color: Colors.orange, size: 30),
                  SizedBox(height: 5),
                  Text(
                    "Thank you for using CBTS Live!",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  static Widget buildPoint(IconData icon, String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Icon(icon, color: const Color(0xFF6A11CB), size: 28),

          const SizedBox(width: 10),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 3),

                Text(
                  description,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}