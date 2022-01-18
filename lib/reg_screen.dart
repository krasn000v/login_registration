import 'package:flutter/material.dart';

class RegScreen extends StatelessWidget {
  const RegScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(color: Color(0xFFeceff1), width: 2));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(height: 100),
                RichText(
                    text: const TextSpan(children: [
                  WidgetSpan(child: Icon(Icons.people_alt_rounded)),
                  TextSpan(
                      text: ' Регистрация',
                      style: TextStyle(fontSize: 20, color: Color(0xFF5C5C5C), fontWeight: FontWeight.w800))
                ])),
                const SizedBox(height: 15),
                Container(
                  height: 1,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFC4C4C4), width: 1),
                  ),
                  alignment: Alignment.center
                ),
                const SizedBox(height: 10),
                const Text('Чтобы зарегистрироваться введите свой номер телефона и почту',
                  style: TextStyle(fontSize: 16, color: Color(0xFFC4C4C4),),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                const Text('Телефон',
                style: TextStyle(fontSize: 16, color: Color(0xFF000000),),
                  textAlign: TextAlign.center,),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFeceff1),
                      labelText: '+7',
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Text('Почта',
                  style: TextStyle(fontSize: 16, color: Color(0xFF000000),),
                  textAlign: TextAlign.center,),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFeceff1),
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                const Text('Вам придет четырехзначный код, который будет вашим паролем',
                  style: TextStyle(fontSize: 16, color: Color(0xFFC4C4C4),),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                const Text('Изменить пароль можно будет в личном кабинете после регистрации',
                  style: TextStyle(fontSize: 16, color: Color(0xFFC4C4C4),),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 45),
                SizedBox(
                  width: 154,
                  height: 42,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Отправить код',
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
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
