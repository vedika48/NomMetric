import 'package:flutter/material.dart';

class HomeScreenIshanrajsingh extends StatelessWidget {
  const HomeScreenIshanrajsingh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'NomMetric',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            GreetingSection(),
            SizedBox(height: 24),
            TodaysMealsSection(),
            SizedBox(height: 24),
            NotificationsSection(),
          ],
        ),
      ),
    );
  }
}

/* -------------------- GREETING -------------------- */

class GreetingSection extends StatelessWidget {
  const GreetingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Good Morning, User 👋',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 6),
        Text(
          'Here’s what’s available for you today',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

/* -------------------- TODAY'S MEALS -------------------- */

class TodaysMealsSection extends StatelessWidget {
  const TodaysMealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Today's Meals",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: const [
            Expanded(
              child: MealCard(
                mealName: 'Breakfast',
                icon: Icons.free_breakfast,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: MealCard(
                mealName: 'Lunch',
                icon: Icons.lunch_dining,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: MealCard(
                mealName: 'Dinner',
                icon: Icons.dinner_dining,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MealCard extends StatelessWidget {
  final String mealName;
  final IconData icon;

  const MealCard({
    super.key,
    required this.mealName,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Icon(icon, size: 32),
            const SizedBox(height: 8),
            Text(
              mealName,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 4),
            const Text(
              'Available',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

/* -------------------- NOTIFICATIONS -------------------- */

class NotificationsSection extends StatelessWidget {
  const NotificationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Notifications',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        Card(
          elevation: 2,
          child: ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('No new notifications'),
            subtitle: const Text('You’re all caught up!'),
            trailing: Icon(
              Icons.check_circle,
              color: Colors.green.shade600,
            ),
          ),
        ),
      ],
    );
  }
}
