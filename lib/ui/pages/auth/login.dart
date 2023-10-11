import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 249, 249, 1.0),
      // const Color.fromRGBO(249, 249, 249, 1.0),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              '/Library/flutter_projects/z73_1/assets/images/top_cap.PNG',
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(
              height: 30,
            ),
            // написать текст 'login'
            const Text(
              'Login',
              style: TextStyle(
                color: Colors.black,
                fontSize: 34,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 20,
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
            // texfield password
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
            // button забыли пароль
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: Color.fromRGBO(198, 124, 78, 1.0),
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign up for an account.',
                      style: TextStyle(
                        color: Color.fromRGBO(198, 124, 78, 1.0),
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // button login
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
                  'Sign In',
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
              'Or sign in with',
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
      ),
    );
  }
}
