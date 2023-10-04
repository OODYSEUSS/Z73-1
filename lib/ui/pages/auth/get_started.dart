import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 660,
                child: Stack(
                  children: [
                    Image.asset(
                      '/Library/flutter_projects/z73_1/assets/images/get_started.png',
                      fit: BoxFit.fitWidth,
                      width: 468,
                      height: 570,
                    ),
                    const Positioned(
                      bottom: 0, // Расстояние снизу
                      left: 50, // Расстояние слева
                      right: 50, // Расстояние справа
                      child: Text(
                        'Coffee so good, your taste buds will love it.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontFamily: 'Sora',
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'The best grain, the finest roast, the powerful flavor.',
                  style: TextStyle(
                    color: Color.fromRGBO(169, 169, 169, 1.0),
                    fontSize: 14,
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      '/Library/flutter_projects/z73_1/assets/images/google.png',
                      width: 25,
                      height: 25,
                    ),
                    const Text(
                      'Get started',
                      style: TextStyle(
                        color: Color.fromARGB(255, 26, 26, 26),
                        fontSize: 18,
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


      // style: ButtonStyle(
      //   backgroundColor: MaterialStateProperty.all<Color>(Colors.white),