import 'package:flutter/material.dart';
import 'bus_stop_near_me_screen.dart';
import 'about_cbts_live_screen.dart';
import 'feedback_screen.dart';
import 'track_bus_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("CBTS Live Dashboard"),
        centerTitle: true,
        backgroundColor: const Color(0xFF6A11CB),
      ),

      body: Padding(
        padding: const EdgeInsets.all(18),

        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,

          children: [

            buildCard(context, Icons.location_searching, "Search Bus Stop Near Me"),
            buildCard(context, Icons.compare_arrows, "Between Locations"),
            buildCard(context, Icons.directions_bus, "Track Bus"),
            buildCard(context, Icons.warning, "Emergency"),
            buildCard(context, Icons.feedback, "Customer Feedback"),
            buildCard(context, Icons.info, "About CBTS Live"),
            buildCard(context, Icons.person, "Profile"),

          ],
        ),
      ),
    );
  }

  Widget buildCard(BuildContext context, IconData icon, String title) {

    return InkWell(

      onTap: () {

        if (title == "Search Bus Stop Near Me") {

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BusStopNearMeScreen(),
            ),
          );

        }

        else if (title == "Customer Feedback") {

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FeedbackScreen(),
            ),
          );

        }

        else if (title == "About CBTS Live") {

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AboutCBTSLiveScreen(),
            ),
          );

        }
        else if (title == "Track Bus") {

  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const TrackBusScreen(),
    ),
  );

}

        else {

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SimpleScreen(title: title),
            ),
          );

        }

      },

      child: Container(

        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xff6a11cb),
              Color(0xff2575fc),
            ],
          ),

          borderRadius: BorderRadius.circular(18),

          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(2, 4),
            ),
          ],
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Icon(
              icon,
              color: Colors.white,
              size: 40,
            ),

            const SizedBox(height: 10),

            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class SimpleScreen extends StatelessWidget {

  final String title;

  const SimpleScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color(0xFF6A11CB),
      ),

      body: Center(
        child: Text(
          "$title Screen",
          style: const TextStyle(fontSize: 22),
        ),
      ),

    );
  }
}