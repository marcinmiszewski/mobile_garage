import 'package:flutter/material.dart';

class AddInsurancePageContent extends StatelessWidget {
  const AddInsurancePageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ubezpieczenie'),
      ),
      body: const Center(
        child: Text(
          'Ubezpieczenie',
        ),
      ),
    );
  }
}
