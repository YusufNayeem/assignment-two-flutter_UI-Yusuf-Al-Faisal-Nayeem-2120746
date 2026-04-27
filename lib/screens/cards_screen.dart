import 'package:flutter/material.dart';
import '../widgets/app_header.dart';


class CardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Shared top header (avatar + name + bell)
            AppHeader(),
            SizedBox(height: 20),

            Text(
              'My Cards',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),

            // ── Credit Card Image from Network ──
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://static.vecteezy.com/system/resources/thumbnails/009/384/393/small/credit-card-clipart-design-illustration-free-png.png',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
                // Shows a loading spinner while the image is downloading
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: CircularProgressIndicator(
                        color: Color(0xFF5B5FEF),
                      ),
                    ),
                  );
                },
                // Shows an error box if image fails to load
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.broken_image, color: Colors.grey, size: 40),
                          SizedBox(height: 8),
                          Text(
                            'Image failed to load',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 20),

            
            Row(
              children: [
                _CardActionButton(icon: Icons.close, label: 'Block'),
                _CardActionButton(icon: Icons.credit_card, label: 'Details'),
                _CardActionButton(icon: Icons.info_outline, label: 'Limit'),
              ],
            ),

            SizedBox(height: 28),

            Text(
              'Linked Accounts',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 14),

            // ── Linked Account Row ──
            Container(
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
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xFFEEEEFF),
                    child: Text(
                      'S',
                      style: TextStyle(
                        color: Color(0xFF5B5FEF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shared Savings',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '\$5,500.00',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class _CardActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _CardActionButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.12),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEFF),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: Color(0xFF5B5FEF), size: 20),
            ),
            SizedBox(height: 8),
            Text(label, style: TextStyle(fontSize: 12, color: Colors.black87)),
          ],
        ),
      ),
    );
  }
}
