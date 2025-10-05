import 'package:flutter/material.dart';

class MedicationTrackingPage extends StatelessWidget {
  const MedicationTrackingPage({super.key});

  static const routePath = '/medication';
  static const routeName = 'medication-tracking';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medication Tracking'),
      ),
      body: const Center(
        child: Text('Medication tracking will go here.'),
      ),
    );
  }
}
