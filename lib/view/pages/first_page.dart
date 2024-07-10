import 'package:aqualae_apk/view/pages/boarding_pass_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FirstPage extends HookWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final fromtextcontroller = useTextEditingController();
    final totextcontroller = useTextEditingController();
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Expanded(
        child: Stack(children: [
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
          const Positioned(
            top: 50,
            left: 20,
            child: Text(
              "Let's book your",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Colors.blueGrey),
            ),
          ),
          const Positioned(
            top: 80,
            left: 20,
            child: Text(
              "flight",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Colors.blueGrey),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0),
            child: Container(
              width: 400,
              height: 600,
              decoration: const BoxDecoration(
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
              padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 400,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "From",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.grey),
                          ),
                          Expanded(
                            child: TextField(
                              controller: fromtextcontroller,
                              textAlign: TextAlign.center,
                              textCapitalization: TextCapitalization.words,
                              decoration: const InputDecoration(
                                  hintText: "Departure Location",
                                  hintStyle: TextStyle(
                                      fontSize: 18, color: Colors.grey)),
                              style: const TextStyle(fontSize: 24),
                            ),
                          )
                        ]),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Container(
                    width: 400,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "To",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.grey),
                          ),
                          Expanded(
                            child: TextField(
                              controller: totextcontroller,
                              textAlign: TextAlign.center,
                              textCapitalization: TextCapitalization.words,
                              decoration: const InputDecoration(
                                  hintText: "Arrival Location",
                                  hintStyle: TextStyle(
                                      fontSize: 18, color: Colors.grey)),
                              style: const TextStyle(fontSize: 24),
                            ),
                          )
                        ]),
                  ),
                  const SizedBox(
                    height: 62,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              style: const ButtonStyle(
                                  foregroundColor:
                                      WidgetStatePropertyAll(Colors.lightBlue)),
                              onPressed: () {
                                fromtextcontroller.clear();
                                totextcontroller.clear();
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const BoardingPassPage();
                                  },
                                ));
                              },
                              child: const Text(
                                "Submit",
                              )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
