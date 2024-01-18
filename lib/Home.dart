// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, sort_child_properties_last, unnecessary_string_interpolations, file_names
import 'Zoom.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const list = [
    {
      'title': 'لوحة الصدارة ',
      'image':
          'https://elitestudents.link/wp-content/uploads/2022/09/2817802.png',
      'path': '/LeaderBoard'
    },
    {
      'title': 'المحاضرات ',
      'image':
          'https://elitestudents.link/wp-content/uploads/2022/09/ZOOM-Cloud-Meetings_-logo.jpg',
      'path': '/Lectures'
    },
    {
      'title': 'الاختبارات',
      'image':
          'https://elitestudents.link/wp-content/uploads/2022/09/2792474.png',
      'path': '/Tests'
    },
    {
      'title': 'ملزمة الذكاء',
      'image':
          'https://elitestudents.link/wp-content/uploads/2022/09/square-ali.png',
      'path': '/Malzama'
    },
    {
      'title': 'المعلومات',
      'image':
          'https://elitestudents.link/wp-content/uploads/2022/09/2436683.png',
      'path': '/Profile'
    },
    {
      'title': 'مساعدة',
      'image':
          'https://elitestudents.link/wp-content/uploads/2022/09/4961759.png',
      'path': '/Help'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent[400],
        title: Text(
          'منصة الذكاء للاستاذ علي الربيعي',
          style: TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.right,
        ),
      ),
      body: GridView(
        children: [
          for (var item in list)
            Card(
              margin: EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, item['path']!),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.network(
                        "${item['image'].toString()}",
                        height: 125,
                        width: 125,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                        ),
                        child: Text(
                          "${item['title'].toString()}",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 9 / 12),
      ),
    );
  }
}
