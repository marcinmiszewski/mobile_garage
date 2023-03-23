import 'package:flutter/material.dart';

class AddExploatationContent extends StatelessWidget {
  const AddExploatationContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eksplatacja'),
      ),
      body: const Center(
        child: Text(
          'Eksplatacja',
        ),
      ),
    );
  }
}
