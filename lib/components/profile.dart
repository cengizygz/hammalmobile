import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  _profilePageState createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 33, 37, 184),
          title: Row(
            children: [
              SizedBox(
                width: 50,
              ),
              const Icon(
                Icons.sports_baseball,
                color: Colors.white,
              ),
              const SizedBox(
                width: 20,
              ),
              const Text("BROBALL",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              SizedBox(
                width: 95,
              ),
              const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ],
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, 'home');
            },
            child: const Icon(
              Icons.shopping_cart_sharp,
              color: Colors.white,
            ),
          )),
    );
  }
}
