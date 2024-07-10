import 'package:aqualae_apk/view/pages/boarding_pass_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BoardingPassPage(),
                    ));
              },
              child: const Text("boarding pass page"))
        ],
      ),
    );
  }
}
