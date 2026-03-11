import 'package:flutter/material.dart';

class TrackBusScreen extends StatefulWidget {
  const TrackBusScreen({super.key});

  @override
  State<TrackBusScreen> createState() => _TrackBusScreenState();
}

class _TrackBusScreenState extends State<TrackBusScreen> {

  final TextEditingController busController = TextEditingController();
  bool showTracking = false;

  int currentStop = 2; // current bus location

  final List<Map<String, String>> stops = [

    {
      "name": "Ameerpet",
      "scheduled": "08:00 AM",
      "actual": "08:02 AM"
    },

    {
      "name": "Punjagutta",
      "scheduled": "08:15 AM",
      "actual": "08:16 AM"
    },

    {
      "name": "Begumpet",
      "scheduled": "08:30 AM",
      "actual": "08:32 AM"
    },

    {
      "name": "Paradise",
      "scheduled": "08:45 AM",
      "actual": "--"
    },

    {
      "name": "Secunderabad",
      "scheduled": "09:00 AM",
      "actual": "--"
    }

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Track Bus"),
        backgroundColor: const Color(0xFF6A11CB),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            TextField(
              controller: busController,
              decoration: InputDecoration(
                hintText: "Enter Bus Number",
                prefixIcon: const Icon(Icons.directions_bus),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(

                onPressed: () {

                  if (busController.text.isNotEmpty) {
                    setState(() {
                      showTracking = true;
                    });
                  }

                },

                child: const Text("Track Bus"),
              ),
            ),

            const SizedBox(height: 20),

            if (showTracking) ...[

              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(15),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: const [

                      Text(
                        "Route: Ameerpet → Secunderabad",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text("Start Time: 08:00 AM"),

                      SizedBox(height: 5),

                      Text("End Time: 09:00 AM"),

                    ],
                  ),
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                "Live Bus Progress",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Expanded(
                child: ListView.builder(

                  itemCount: stops.length,

                  itemBuilder: (context, index) {

                    bool completed = index < currentStop;
                    bool current = index == currentStop;

                    return Row(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        Column(
                          children: [

                            Icon(
                              current
                                  ? Icons.directions_bus
                                  : Icons.location_on,
                              color: completed
                                  ? Colors.green
                                  : current
                                      ? Colors.blue
                                      : Colors.grey,
                            ),

                            if (index != stops.length - 1)
                              Container(
                                width: 3,
                                height: 60,
                                color: completed
                                    ? Colors.green
                                    : Colors.grey.shade300,
                              ),

                          ],
                        ),

                        const SizedBox(width: 15),

                        Expanded(
                          child: Card(

                            elevation: 2,

                            child: Padding(
                              padding: const EdgeInsets.all(12),

                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,

                                children: [

                                  Text(
                                    stops[index]["name"]!,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  const SizedBox(height: 5),

                                  Text(
                                    "Scheduled: ${stops[index]["scheduled"]}",
                                  ),

                                  Text(
                                    "Actual: ${stops[index]["actual"]}",
                                  ),

                                  if (current)
                                    const Text(
                                      "Bus Arriving",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                ],
                              ),
                            ),
                          ),
                        ),

                      ],
                    );
                  },
                ),
              )

            ]

          ],
        ),
      ),
    );
  }
}