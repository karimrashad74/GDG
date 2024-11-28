import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen/home/widgets/banner_card.dart';
import 'package:screen/home/widgets/categories.dart';
import 'package:screen/home/widgets/custom_bottom_nav_bar.dart';
import 'package:screen/home/widgets/search_bar.dart';
import 'package:screen/home/widgets/section_title.dart';
import 'package:screen/home/widgets/top_doctors_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Find your desire\nhealth solution',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.bell, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustemSearchBar(),
              const SizedBox(height: 20),
              Categories(),
              const SizedBox(height: 20),
              BannerCard(),
              const SizedBox(height: 20),
              SectionTitle(title: 'Top Doctor'),
              TopDoctorsList(),
              SectionTitle(title: 'Health article'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
