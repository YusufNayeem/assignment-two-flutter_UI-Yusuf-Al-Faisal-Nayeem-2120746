import 'package:flutter/material.dart';
import '../widgets/app_header.dart';


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            AppHeader(),
            SizedBox(height: 20),

            
            Center(
              child: Text(
                'User Profile',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 24),

            
            Center(
              child: CircleAvatar(
                radius: 52,
                backgroundColor: Color(0xFF5B5FEF),
                child: Text(
                  'YAF',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 28),

            
            _ProfileInfoCard(
              label: 'Name',
              value: 'Yusuf Al Faisal',
            ),
            SizedBox(height: 12),

           
            _ProfileInfoCard(
              label: 'Student ID',
              value: '2120746',
            ),
            SizedBox(height: 12),

            
            _ProfileInfoCard(
              label: 'Email',
              value: '2120746@iub.edu.bd',
            ),
            SizedBox(height: 12),

            
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.10),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bio / Story',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '"I\'m currently focusing on my final year, balancing studies '
                    'with building side projects. I believe financial health is key to '
                    'academic success. I love hiking on weekends and planning my next '
                    'big travel adventure!"',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black87,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Red note for students
                  Text(
                    '(Note: Students should replace the text above with their own description here!)',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}


class _ProfileInfoCard extends StatelessWidget {
  final String label;
  final String value;

  const _ProfileInfoCard({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.10),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Small grey label on top
          Text(
            label,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          SizedBox(height: 4),
          // Bold value below
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
