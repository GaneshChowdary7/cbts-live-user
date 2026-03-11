import 'package:flutter/material.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {

  int rating = 0;

  Widget buildStar(int index) {
    return IconButton(
      icon: Icon(
        index <= rating ? Icons.star : Icons.star_border,
        color: Colors.orange,
        size: 32,
      ),
      onPressed: () {
        setState(() {
          rating = index;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Customer Feedback"),
        backgroundColor: const Color(0xFF6A11CB),
      ),

      body: Container(

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff6a11cb),
              Color(0xff2575fc),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: SingleChildScrollView(

          padding: const EdgeInsets.all(20),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              const Center(
                child: Icon(
                  Icons.feedback,
                  size: 80,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 20),

              const Center(
                child: Text(
                  "We Value Your Feedback",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              TextField(
                decoration: InputDecoration(
                  hintText: "Your Name",
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Rate Your Experience",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildStar(1),
                  buildStar(2),
                  buildStar(3),
                  buildStar(4),
                  buildStar(5),
                ],
              ),

              const SizedBox(height: 20),

              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: "Write your feedback...",
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.message),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              SizedBox(
                width: double.infinity,
                height: 50,

                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xff6a11cb),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),

                  onPressed: () {

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Thank you for your feedback!"),
                      ),
                    );

                  },

                  child: const Text(
                    "Submit Feedback",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
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