import 'package:flutter/material.dart';
import '../widgets/app_header.dart';


class HomeScreen extends StatelessWidget {
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

            
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: Color(0xFF5B5FEF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Balance',
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                      Icon(Icons.credit_card, color: Colors.white70, size: 22),
                    ],
                  ),
                  SizedBox(height: 8),
                  
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '\$8,945',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '.32',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Divider(color: Colors.white30),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Savings: \$5,500',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Last 30 days: +\$300',
                            style: TextStyle(color: Colors.white70, fontSize: 12),
                          ),
                          SizedBox(width: 4),
                          Icon(Icons.arrow_forward, color: Colors.white70, size: 14),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            
            Row(
              children: [
                _QuickActionButton(icon: Icons.swap_vert, label: 'Transfer'),
                _QuickActionButton(icon: Icons.receipt_long, label: 'Pay Bills'),
                _QuickActionButton(icon: Icons.link, label: 'Invest'),
              ],
            ),

            SizedBox(height: 24),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Transactions',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'View All',
                  style: TextStyle(color: Color(0xFF5B5FEF), fontSize: 13),
                ),
              ],
            ),

            SizedBox(height: 12),

            
            _TransactionItem(
              icon: Icons.movie_outlined,
              title: 'Netflix Subscripti...',
              subtitle: 'Entertainment • Today',
              amount: '-\$19.99',
              isIncome: false,
            ),
            _TransactionItem(
              icon: Icons.local_cafe_outlined,
              title: 'Coffee Shop',
              subtitle: 'Food & Drink • Today',
              amount: '-\$4.50',
              isIncome: false,
            ),
            _TransactionItem(
              icon: Icons.attach_money,
              title: 'Salary Deposit',
              subtitle: 'Income • Yesterday',
              amount: '+\$3500.00',
              isIncome: true,
            ),
            _TransactionItem(
              icon: Icons.shopping_cart_outlined,
              title: 'Grocery Store',
              subtitle: 'Shopping • Yesterday',
              amount: '-\$55.80',
              isIncome: false,
            ),
            _TransactionItem(
              icon: Icons.shopping_cart_outlined,
              title: 'Amazon Purchase',
              subtitle: 'Shopping • 2 days ago',
              amount: '-\$120.45',
              isIncome: false,
            ),
          ],
        ),
      ),
    );
  }
}


class _QuickActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _QuickActionButton({required this.icon, required this.label});

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


class _TransactionItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String amount;
  final bool isIncome;

  const _TransactionItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.isIncome,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          // Icon circle
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.grey.shade600, size: 22),
          ),
          SizedBox(width: 12),
          
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                SizedBox(height: 2),
                Text(subtitle, style: TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
          ),
          
          Text(
            amount,
            style: TextStyle(
              color: isIncome ? Colors.green : Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
