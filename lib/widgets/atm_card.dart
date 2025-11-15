import 'package:flutter/material.dart';

class AtmCard extends StatelessWidget {
  final String bankName;
  final String balance;
  final String cardNumber;
  final String cardType;
  final Color startColor;
  final Color endColor;

  const AtmCard({
    super.key,
    required this.bankName,
    required this.balance,
    required this.cardNumber,
    required this.cardType,
    required this.startColor,
    required this.endColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 170,
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [startColor, endColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: endColor.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                cardType == 'BCA'
                    ? 'assets/images/bca_logo.png'
                    : cardType == 'Mandiri'
                        ? 'assets/images/mandiri_logo.png'
                        : cardType == 'BRI'
                            ? 'assets/images/bri_logo.png'
                            : cardType == 'BJB'
                                ? 'assets/images/bjb_logo.png'
                                : 'assets/images/visa_logo.png',
                height: 32,
              ),

              const Icon(Icons.wifi, color: Colors.white70, size: 24),
            ],
          ),

          const Spacer(),

          const Text(
            'Balance',
            style: TextStyle(color: Colors.white70, fontSize: 12),
          ),

          Text(
            balance,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            '**** **** **** $cardNumber',
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),

          const Spacer(),

          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              bankName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}