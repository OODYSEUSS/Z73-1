import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            '/Library/flutter_projects/z73_1/assets/images/top_cap2.PNG',
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(
            height: 40,
          ),
          // написать текст 'Sing Up'
          const Text(
            'Register',
            style: TextStyle(
              color: Colors.black,
              fontSize: 34,
              fontFamily: 'Sora',
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          // texfield email
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Email',
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 17, horizontal: 20),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(222, 222, 222, 1.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(222, 222, 222, 1.0),
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Password',
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 17, horizontal: 20),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(222, 222, 222, 1.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(222, 222, 222, 1.0),
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Confirm password',
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 17, horizontal: 20),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(222, 222, 222, 1.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(222, 222, 222, 1.0),
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(360, 52),
                  backgroundColor: const Color.fromRGBO(198, 124, 78, 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Or sign up with',
            style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 20,
              fontFamily: 'Sora',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(222, 222, 222, 1.0),
                    ),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    '/Library/flutter_projects/z73_1/assets/images/google.png',
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(222, 222, 222, 1.0),
                    ),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    '/Library/flutter_projects/z73_1/assets/images/apple.png',
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
            ],
          ),

          const Spacer(), // добавил пространство для выравнивания последней картинки
          Align(
            // а этой хуйней выровнял картинку по нижнему левому краю
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              '/Library/flutter_projects/z73_1/assets/images/bottom_cap.PNG',
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
