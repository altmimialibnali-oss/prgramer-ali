import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    final schedule = [
      {
        'day': 'Saturday',
        'class': 'CrossFit',
        'time': '08:00',
        'icon': Icons.fitness_center,
        'color': Colors.blue,
      },
      {
        'day': 'Sunday',
        'class': 'Yoga',
        'time': '10:00',
        'icon': Icons.self_improvement,
        'color': Colors.purple,
      },
      {
        'day': 'Monday',
        'class': 'HIIT',
        'time': '18:00',
        'icon': Icons.speed,
        'color': Colors.red,
      },
      {
        'day': 'Tuesday',
        'class': 'Weight Training',
        'time': '20:00',
        'icon': Icons.sports_gymnastics,
        'color': Colors.orange,
      },
      {
        'day': 'Wednesday',
        'class': 'Cardio',
        'time': '07:00',
        'icon': Icons.directions_run,
        'color': Colors.green,
      },
      {
        'day': 'Thursday',
        'class': 'Pilates',
        'time': '09:00',
        'icon': Icons.accessibility_new,
        'color': Colors.teal,
      },
    ];

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple.shade50, Colors.blue.shade50],
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
                      colors: [Colors.purple.shade400, Colors.purple.shade700],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:  Row(
                    children: [
                      Icon(Icons.calendar_today, color: Colors.white, size: 32),
                      SizedBox(width: 16),
                      Text(
                        'Weekly Schedule',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 70),
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
                  itemCount: schedule.length,
                  itemBuilder: (context, index) {
                    final s = schedule[index];
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
                        child: Row(
                          children: [
                            Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Container(
                                width: 80,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      (s['color'] as MaterialColor).shade400,
                                      (s['color'] as MaterialColor).shade700,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      s['icon'] as IconData,
                                      color: Colors.white,
                                      size: 28,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      s['day'] as String,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    s['class'] as String,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        size: 18,
                                        color: Colors.grey.shade600,
                                      ),
                                      const SizedBox(width: 6),
                                      Text(
                                        'Time: ${s['time']}',
                                        style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                color: (s['color'] as Color).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: (s['color'] as Color).withOpacity(0.3),
                                  width: 2,
                                ),
                              ),
                              child: Text(
                                s['time'] as String,
                                style: TextStyle(
                                  color: s['color'] as Color,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
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
