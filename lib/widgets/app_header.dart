import 'package:flutter/material.dart';

// ─────────────────────────────────────────────
// SHARED APP HEADER
// Used on all screens — shows avatar, name, and bell icon
// ─────────────────────────────────────────────
class AppHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        
        Row(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: Color(0xFF5B5FEF),
              child: Text(
                'YAF',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back,',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  'Yusuf Al Faisal (2120746)', 
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),

        // Right side: bell icon with red dot notification badge
        Stack(
          children: [
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Icon(
                Icons.notifications_outlined,
                size: 20,
                color: Colors.black,
              ),
            ),
            // Red notification dot
            Positioned(
              right: 6,
              top: 6,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
