import 'package:flutter/material.dart';

class BoardingPassPage extends StatelessWidget {
  const BoardingPassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Expanded(
              child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 280,
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/boarding_page_img.jpg',
                        ),
                        fit: BoxFit.fill)),
              ),
              Align(
                alignment: const Alignment(0, 0),
                child: Container(
                  width: 400,
                  height: 600,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                      'assets/images/bp.png',
                    )),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 70, horizontal: 40),
                ),
              ),
              Align(
                alignment: const Alignment(0, 0.8),
                child: ElevatedButton(
                    style: const ButtonStyle(
                        foregroundColor:
                            WidgetStatePropertyAll(Colors.lightBlue)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Download")),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
