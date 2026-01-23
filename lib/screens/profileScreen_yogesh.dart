import 'package:flutter/material.dart';

class ProfileScreenYogesh extends StatelessWidget {
  const ProfileScreenYogesh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Avatar
            CircleAvatar(
              radius: 45,
              backgroundColor: Colors.grey.shade300,
              child: const Icon(
                Icons.person,
                size: 50,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 12),

            // User Name
            const Text(
              "John Doe",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 4),

            // Email
            Text(
              "john.doe@email.com",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
              ),
            ),

            const SizedBox(height: 24),

            // Options
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.edit),
                    title: Text("Edit Profile"),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  ),
                  Divider(height: 0),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  ),
                  Divider(height: 0),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}