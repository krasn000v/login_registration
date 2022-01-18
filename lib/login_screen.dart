import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(color: Color(0xFFeceff1), width: 2));
    const linkTextStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Color(0xFF0079D0),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 38),
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 155,
              ),
              const SizedBox(
                width: 104,
                height: 80,
                child: Image(image: AssetImage('images/dart-logo.png')),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Введите логин в виде 10 цифр номера телефона',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFeceff1),
                  labelText: '+7',
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFeceff1),
                  labelText: '*****',
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: 154,
                height: 42,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Войти',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF0079D0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 70),
              const InkWell(
                child: Text('Регистрация', style: linkTextStyle),
                onTap: null,
              ),
              const SizedBox(
                height: 20,
              ),
              const InkWell(
                child: Text('Забыли пароль?', style: linkTextStyle),
                onTap: null,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
