import 'package:flutter/material.dart';

class ServiceModel {
  final String name;
  final String priceLabel; // e.g. "INR 100 / service"
  final String priceValue; // e.g. "INR 100"
  final IconData icon;
  final Color color;

  const ServiceModel({
    required this.name,
    required this.priceLabel,
    required this.priceValue,
    required this.icon,
    required this.color,
  });
}

const List<ServiceModel> kServices = [
  ServiceModel(
    name: 'Cleaning',
    priceLabel: 'INR 100 / service',
    priceValue: 'INR 100',
    icon: Icons.cleaning_services_rounded,
    color: Color(0xFF26A69A),
  ),
  ServiceModel(
    name: 'Plumbing',
    priceLabel: 'INR 250 / service',
    priceValue: 'INR 250',
    icon: Icons.plumbing_rounded,
    color: Color(0xFF42A5F5),
  ),
  ServiceModel(
    name: 'Electrical',
    priceLabel: 'INR 300 / service',
    priceValue: 'INR 300',
    icon: Icons.electrical_services_rounded,
    color: Color(0xFFFFA726),
  ),
  ServiceModel(
    name: 'Babysitting',
    priceLabel: 'INR 100 / hour',
    priceValue: 'INR 100',
    icon: Icons.child_care_rounded,
    color: Color(0xFFEC407A),
  ),
];
