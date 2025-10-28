import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BillProvider extends ChangeNotifier {
  String selectedBrand = 'All';
  bool showRewardBanner = true;

  final List<Map<String, dynamic>> brands = [
    {'id': 'all', 'name': 'All', 'icon': Icons.credit_card},
    {
      'id': 'visa',
      'name': 'Visa',
      'icon': Icons.credit_card,
      'color': const Color(0xFF4F8EF7),
    },
    {
      'id': 'mastercard',
      'name': 'Mastercard',
      'icon': Icons.credit_card,
      'color': const Color(0xFFFF5F56),
    },
    {
      'id': 'amex',
      'name': 'American Express',
      'icon': Icons.credit_card,
      'color': const Color(0xFF2ECC71),
    },
    {
      'id': 'discover',
      'name': 'Discover',
      'icon': Icons.credit_card,
      'color': const Color(0xFFFF9500),
    },
  ];

  final List<Map<String, dynamic>> allBills = [
    {
      'id': 1,
      'brand': 'visa',
      'brandName': 'Visa',
      'cardNumber': '**** **** **** 1234',
      'amount': '\$1,250.00',
      'date': 'Due Jan 15, 2025',
      'status': 'Due',
      'statusColor': const Color(0xFFFF9500),
      'brandColor': const Color(0xFF4F8EF7),
    },
    {
      'id': 2,
      'brand': 'mastercard',
      'brandName': 'Mastercard',
      'cardNumber': '**** **** **** 5678',
      'amount': '\$890.50',
      'date': 'Due Jan 20, 2025',
      'status': 'Paid',
      'statusColor': const Color(0xFF2ECC71),
      'brandColor': const Color(0xFFFF5F56),
    },
    {
      'id': 3,
      'brand': 'amex',
      'brandName': 'American Express',
      'cardNumber': '**** **** **** 9012',
      'amount': '\$2,340.75',
      'date': 'Due Jan 10, 2025',
      'status': 'Overdue',
      'statusColor': const Color(0xFFFF5F56),
      'brandColor': const Color(0xFF2ECC71),
    },
  ];

  List<Map<String, dynamic>> get filteredBills {
    if (selectedBrand == 'All') return allBills;
    return allBills
        .where((bill) => bill['brand'] == selectedBrand.toLowerCase())
        .toList();
  }

  void selectBrand(String brandName) {
    selectedBrand = brandName;
    notifyListeners();
  }

  void hideRewardBanner() {
    showRewardBanner = false;
    notifyListeners();
  }
}
