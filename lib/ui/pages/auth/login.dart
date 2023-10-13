import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});

  // контроллеры текстовых полей
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  // вход в акк
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 249, 249, 1.0),
      body: Center(
        child: Column(
          children: [
            // верхняя шапка
            Stack(
              children: [
                Image.asset(
                  '/Library/flutter_projects/z73_1/assets/images/top_cap.PNG',
                  fit: BoxFit.fitWidth,
                ),
                Positioned(
                  top: 30,
                  left: 5,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_sharp,
                      size: 35,
                      color: Color.fromRGBO(249, 249, 249, 1.0),
                    ),
                  ),
                ),
              ],
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
            MyTextField(
                controller: usernameController,
                hintText: 'Email',
                obscureText: false),
            const SizedBox(
              height: 15,
            ),
            // texfield password
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            // button забыли пароль и button регистрация аккаунта
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyTextButton(
                    onPressed: () {},
                    text: 'Forgot password',
                  ),
                  MyTextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    text: 'Sign up for an account.',
                  )
                ],
              ),
            ),
            // button login
            MyButton(
              onPressed: signUserIn,
              text: 'Sign In',
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
            // кнопки для авторизации с помощью гугла и эпла
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyImageButton(
                  imagePath:
                      '/Library/flutter_projects/z73_1/assets/images/google.png',
                  onTap: () {},
                ),
                const SizedBox(
                  width: 20,
                ),
                MyImageButton(
                  imagePath:
                      '/Library/flutter_projects/z73_1/assets/images/apple.png',
                  onTap: () {},
                ),
              ],
            ),
            const Spacer(), // добавил пространство для выравнивания нижней шапки
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

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
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
    );
  }
}

class MyButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;

  const MyButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(360, 52),
            backgroundColor: const Color.fromRGBO(198, 124, 78, 1.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Sora',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class MyTextButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;

  const MyTextButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: Color.fromRGBO(198, 124, 78, 1.0),
          fontFamily: 'Sora',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class MyImageButton extends StatelessWidget {
  final String imagePath;
  final Function()? onTap;
  const MyImageButton({
    super.key,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
          imagePath,
          height: 50,
          width: 50,
        ),
      ),
    );
  }
}
