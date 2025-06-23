import 'package:flutter/material.dart';

void main() {
  runApp(RemindersApp());
}

class RemindersApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reminders App',
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  Widget buildFeature({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 28, color: iconColor),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                SizedBox(height: 4),
                Text(description,
                    style: TextStyle(fontSize: 14, color: Colors.black87)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  'Welcome to\nReminders',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    height: 1.3,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40),

              buildFeature(
                icon: Icons.flash_on,
                iconColor: Colors.green,
                title: 'Quick Creation',
                description:
                    'Simply type in your list, ask Siri, or add a reminder from your Calendar app.',
              ),

              buildFeature(
                icon: Icons.shopping_cart,
                iconColor: Colors.orange,
                title: 'Grocery Shopping',
                description:
                    'Create a Grocery List that automatically sorts items you add by category.',
              ),

              buildFeature(
                icon: Icons.groups,
                iconColor: Colors.amber[800]!,
                title: 'Easy Sharing',
                description:
                    'Collaborate on a list, and even assign individual tasks.',
              ),

              buildFeature(
                icon: Icons.view_list,
                iconColor: Colors.blue,
                title: 'Powerful Organization',
                description:
                    'Create new lists to match your needs, categorize reminders with tags, and manage reminders around your work flow with Smart Lists.',
              ),

              Spacer(),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
