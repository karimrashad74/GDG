import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'icon': Icons.local_hospital, 'label': 'Doctor'},
    {'icon': Icons.local_pharmacy, 'label': 'Pharmacy'},
    {'icon': Icons.local_hospital_outlined, 'label': 'Hospital'},
    {'icon': Icons.local_taxi, 'label': 'Ambulance'},
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: categories.map((category) {
        return Column(
          children: [
            CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 241, 241, 241),
              radius: 30,
              child: Icon(category['icon'], color: Colors.green, size: 30),
            ),
            const SizedBox(height: 8),
            Text(
              category['label'],
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        );
      }).toList(),
    );
  }
}
