import 'package:flutter/material.dart';
import '../widgets/atm_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ========================= HEADER =========================
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 18),
                decoration: const BoxDecoration(
                  color: Color(0xFF3E64FF),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Finance Mate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // ========================= HALLO & BALANCE =========================
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Back,',
                          style:
                              TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        Text(
                          'Silvia',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/silvia_profile.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // ========================= TOTAL BALANCE =========================
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFF3E64FF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Balance',
                            style:
                                TextStyle(color: Colors.white70, fontSize: 14),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Rp45.100.000',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.account_balance_wallet,
                          color: Colors.white, size: 32),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // ========================= MY CARDS =========================
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'My Cards',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: const [
                    AtmCard(
                      bankName: 'Bank BCA',
                      balance: 'Rp5.350.000',
                      cardNumber: '8765',
                      cardType: 'BCA',
                      startColor: Color(0xFF56CCF2),
                      endColor: Color(0xFF2F80ED),
                    ),
                    AtmCard(
                      bankName: 'VISA',
                      balance: 'Rp12.500.000',
                      cardNumber: '2345',
                      cardType: 'VISA',
                      startColor: Color(0xFF6A11CB),
                      endColor: Color(0xFF2575FC),
                    ),
                    AtmCard(
                      bankName: 'Bank Mandiri', 
                      balance: 'Rp10.800.000', 
                      cardNumber: '9923', 
                      cardType: 'Mandiri', 
                      startColor: Color(0xFF0033A0), 
                      endColor: Color(0xFFFFC300),
                      ),
                   AtmCard(
                      bankName: 'Bank BRI', 
                      balance: 'Rp8.200.000', 
                      cardNumber: '3520', 
                      cardType: 'BRI', 
                      startColor: Color(0xFF00529B), 
                      endColor: Color.fromARGB(255, 124, 110, 233)
                      ),
                  AtmCard(
                    bankName: 'Bank BJB', 
                    balance: 'Rp1.500.000', 
                    cardNumber: '1123', 
                    cardType: 'BJB', 
                    startColor: Color(0xFF1C92D2), 
                    endColor: Color(0xFF0052D4),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // ========================= QUICK ACCESS =========================
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Quick Access',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    QuickAccessButton(icon: Icons.health_and_safety, label: 'Health', color: Colors.green),
                    QuickAccessButton(icon: Icons.flight_takeoff, label: 'Travel', color: Colors.blue),
                    QuickAccessButton(icon: Icons.fastfood, label: 'Food', color: Colors.orange),
                    QuickAccessButton(icon: Icons.event, label: 'Event', color: Colors.purple),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // ========================= RECENT TRANSACTIONS =========================
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Recent Transactions',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: const [
                    TransactionTile(
                        icon: Icons.local_cafe,
                        title: 'Coffee Shop',
                        category: 'Food',
                        amount: '-Rp35.000',
                        color: Colors.red),
                    TransactionTile(
                        icon: Icons.directions_car,
                        title: 'Grab Ride',
                        category: 'Travel',
                        amount: '-Rp25.000',
                        color: Colors.red),
                    TransactionTile(
                        icon: Icons.fitness_center,
                        title: 'Gym Membership',
                        category: 'Health',
                        amount: '-Rp150.000',
                        color: Colors.red),
                    TransactionTile(
                        icon: Icons.movie,
                        title: 'Movie Ticket',
                        category: 'Event',
                        amount: '-Rp60.000',
                        color: Colors.red),
                    TransactionTile(
                        icon: Icons.attach_money,
                        title: 'Salary',
                        category: 'Income',
                        amount: '+Rp5.000.000',
                        color: Colors.green),
                  ],
                ),
              ),

              const SizedBox(height: 80),
            ],
          ),
        ),
      ),

      // Floating Action Button (+)
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF3E64FF),
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

// ========================= QUICK ACCESS WIDGET =========================
class QuickAccessButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const QuickAccessButton({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: color.withOpacity(0.2),
          child: Icon(icon, color: color),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: Colors.black87),
        ),
      ],
    );
  }
}

// ========================= TRANSACTION TILE =========================
class TransactionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String category;
  final String amount;
  final Color color;

  const TransactionTile({
    super.key,
    required this.icon,
    required this.title,
    required this.category,
    required this.amount,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 6,
              offset: const Offset(0, 4))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.shade100,
                child: Icon(icon, color: Colors.black54),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14)),
                  Text(category,
                      style:
                          const TextStyle(fontSize: 12, color: Colors.black54)),
                ],
              ),
            ],
          ),
          Text(
            amount,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
