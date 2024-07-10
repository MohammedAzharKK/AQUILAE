import 'package:aqualae_apk/view/pages/first_page.dart';
import 'package:flutter/material.dart';
import 'package:tbib_splash_screen/splash_screen_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: PageView(children: [
        Container(
          child: Image.asset(
            'assets/images/image.png',
            fit: BoxFit.fill,
          ),
        ),
        Container(
            width: double.infinity,
            // color: Colors.blue[800],
            color: const Color.fromARGB(255, 3, 50, 106),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // //   Image.asset(
                // //     'assets/images/AquilaeAirways.jpg',
                // //   ),
                // //   const SizedBox(
                // //     height: 48,
                // //   ),
                // //   ElevatedButton(
                // //       onPressed: () {}, child: const Icon(Icons.forward))
                Expanded(
                  child: SplashScreenView(
                    navigateWhere: true,
                    navigateRoute: const FirstPage(),
                    text: WavyAnimatedText(
                      " Aquilae Airways",
                      textStyle: const TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    imageSrc: 'assets/images/AquilaeAirways.jpg',
                    logoSize: 300,
                  ),
                ),
              ],
            )),
      ]),
    );
  }
}
