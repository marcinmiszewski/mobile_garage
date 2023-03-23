import 'package:flutter/material.dart';

class AddRefuelingPageContent extends StatelessWidget {
  const AddRefuelingPageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tankowanie'),
      ),
      body: const Center(
        child: Text(
          'Tankowanie',
        ),
      ),
    );
  }
}
