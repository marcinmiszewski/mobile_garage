import 'package:flutter/material.dart';

class AddRepairsPageContent extends StatelessWidget {
  const AddRepairsPageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Naprawy'),
      ),
      body: const Center(
        child: Text(
          'Naprawy',
        ),
      ),
    );
  }
}
