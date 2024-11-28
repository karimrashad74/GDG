import 'package:flutter/material.dart';
import 'package:screen/core/constants/assets.dart';
import 'package:screen/home/models/doctor.dart';

class TopDoctorsList extends StatelessWidget {
  final List<Doctor> doctors = [
    Doctor(
        name: 'Dr. Marcus Horiz',
        specialty: 'Cardiologist',
        distance: '800m away',
        rating: 4.5,
        photo: Assets.assetsImagesPexelsCedricFauntleroy4270371),
    Doctor(
        name: 'Dr. Maria Elena',
        specialty: 'Psychologist',
        distance: '1.5km away',
        rating: 4.0,
        photo: Assets.assetsImagesPexelsEvelinaZhu5434019),
    Doctor(
        name: 'Dr. Stevi Jess',
        specialty: 'Orthopedist',
        distance: '2km away',
        rating: 4.7,
        photo: Assets.assetsImagesPexelsThirdman5327580),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: doctors.map((doctor) {
          return Container(
            width: 150,
            height: 210,
            margin: const EdgeInsets.only(right: 16),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 71,
                    width: 71,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(doctor.photo),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        doctor.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        doctor.specialty,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.green,
                              size: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              doctor.rating.toString(),
                              style: const TextStyle(
                                color: Colors.green,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          doctor.distance,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
