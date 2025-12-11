import 'package:flutter/material.dart';

class NutritionPage extends StatelessWidget {
  const NutritionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tips = [
      {
        'title': 'Pre-Workout Meal',
        'desc':
            'Eat simple carbohydrates + light protein 60-90 minutes before exercise to increase energy and performance.',
        'icon': Icons.restaurant_menu,
        'color': Colors.orange,
        'time': '60-90 min before',
      },
      {
        'title': 'Post-Workout Meal',
        'desc':
            'A meal rich in protein with complex carbohydrates to help with recovery and muscle building.',
        'icon': Icons.local_dining,
        'color': Colors.blue,
        'time': 'Within 30-60 min',
      },
      {
        'title': 'Water Intake',
        'desc':
            'Keep drinking water throughout the day, especially before, during, and after exercise to hydrate your body.',
        'icon': Icons.water_drop,
        'color': Colors.cyan,
        'time': 'Throughout the day',
      },
      {
        'title': 'Daily Protein',
        'desc':
            'Consume 1.6-2.2 grams of protein per kilogram of body weight daily to support muscle building.',
        'icon': Icons.egg,
        'color': Colors.red,
        'time': 'Daily',
      },
      {
        'title': 'Complex Carbohydrates',
        'desc':
            'Choose complex carbohydrates like brown rice and oats for sustained energy.',
        'icon': Icons.eco,
        'color': Colors.green,
        'time': 'In every meal',
      },
    ];

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade50, Colors.green.shade50],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Card(
                margin: const EdgeInsets.all(16),
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.teal.shade400, Colors.teal.shade700],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:  Row(
                    children: [
                      Icon(Icons.restaurant, color: Colors.white, size: 32),
                      SizedBox(width: 16),
                      Text(
                        'Nutrition Tips',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                       SizedBox(width: 115),
                      IconButton(
                        icon: const Icon(Icons.logout, color: Colors.white,size: 30,),
                        onPressed: () =>
                            Navigator.pushReplacementNamed(context, '/home'),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: tips.length,
                  itemBuilder: (context, index) {
                    final t = tips[index];
                    return Card(
                      margin: const EdgeInsets.only(bottom: 16),
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          (t['color'] as MaterialColor)
                                              .shade400,
                                          (t['color'] as MaterialColor)
                                              .shade700,
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Icon(
                                      t['icon'] as IconData,
                                      color: Colors.white,
                                      size: 28,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        t['title'] as String,
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          color: (t['color'] as Color)
                                              .withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.access_time,
                                              size: 14,
                                              color: t['color'] as Color,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              t['time'] as String,
                                              style: TextStyle(
                                                color: t['color'] as Color,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: (t['color'] as Color).withOpacity(0.05),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: (t['color'] as Color).withOpacity(0.2),
                                ),
                              ),
                              child: Text(
                                t['desc'] as String,
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
