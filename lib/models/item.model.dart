import 'package:asali/enum/bank.enum.dart';
import 'package:asali/enum/payment_status.enum.dart';

class Item {
  final String id;
  final String name;
  final String description;
  final PaymentStatus status;
  final Bank bank;
  final double value;
  final double valueAfterDiscount;

  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.status,
    required this.bank,
    required this.value,
    required this.valueAfterDiscount,
  });
}
