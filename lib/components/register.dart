import 'package:flutter/material.dart';
import 'package:hammalmobile/components/utils/customColors.dart';
import 'package:hammalmobile/components/utils/customTextStyle.dart';

class registerPage extends StatefulWidget {
  const registerPage({Key? key}) : super(key: key);

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    String topImage = "assets/images/topImage.png";
    return Scaffold(
      backgroundColor: Color(0xff21254A),
      body: appBody(height, topImage),
    );
  }

  SingleChildScrollView appBody(double height, String topImage) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            topImageContainer(height, topImage),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titleText(),
                  customSizedBox(),
                  emailTextField(),
                  customSizedBox(),
                  usernameTextField(),
                  customSizedBox(),
                  lastNameTextField(),
                  customSizedBox(),
                  numaraTextField(),
                  customSizedBox(),
                  passwordTextField(),
                  customSizedBox(),
                  dateTextField(),
                  customSizedBox(),
                  signInButton(),
                  customSizedBox(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Text titleText() {
    return Text(
      "Hesap Oluştur",
      style: CustomTextStyle.titleTextStyle,
    );
  }

  TextField emailTextField() {
    return TextField(
      decoration: customInputDecoration("Email"),
    );
  }

  TextField usernameTextField() {
    return TextField(
      decoration: customInputDecoration("İsim"),
    );
  }

  TextField lastNameTextField() {
    return TextField(
      decoration: customInputDecoration("Soyisim"),
    );
  }

  TextField numaraTextField() {
    return TextField(
      decoration: customInputDecoration("Telefon"),
    );
  }

  TextField dateTextField() {
    return TextField(
      decoration: customInputDecoration("Doğum Tarihiniz"),
    );
  }

  TextField passwordTextField() {
    return TextField(
      decoration: customInputDecoration("Sifre"),
    );
  }

  Center signInButton() {
    return Center(
      child: TextButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, 'login');
        },
        child: Container(
          height: 60,
          width: 150,
          margin: EdgeInsets.symmetric(horizontal: 60),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color.fromARGB(255, 33, 37, 184)),
          child: Center(
            child:
                customText("Hesap Oluştur", CustomColors.loginButtonTextColor),
          ),
        ),
      ),
    );
  }

  Container topImageContainer(double height, String topImage) {
    return Container(
      height: height * .25,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(topImage),
        ),
      ),
    );
  }

  Widget customSizedBox() => SizedBox(
        height: 20,
      );

  Widget customText(String text, Color color) => Text(
        text,
        style: TextStyle(color: color),
      );

  InputDecoration customInputDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  DateTime date = DateTime(2022, 12, 24);
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Text(
            '${date.year}/${date.month}/${date.day}',
            style: TextStyle(fontSize: 12),
          ),
        ),
      );
}
