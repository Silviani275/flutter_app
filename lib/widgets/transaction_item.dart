import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionItem extends StatelessWidget {
  final TransactionModel transaction;

  const TransactionItem({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.pink[100],
          child: const Icon(Icons.attach_money, color: Colors.white),
        ),
        title: Text(transaction.title,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black87)),
        subtitle: Text(transaction.category),
        trailing: Text(
          transaction.amount,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: transaction.amount.startsWith('-')
                ? Colors.red
                : Colors.green,
          ),
        ),
      ),
    );
  }
}