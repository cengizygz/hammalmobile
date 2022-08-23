import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hammalmobile/components/navBar.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<String> get imageList => [
        "https://cdnuploads.aa.com.tr/uploads/Contents/2019/03/13/thumbs_b_c_5dd4e0148b992377ee3b5cc715b8721b.jpg",
        "https://www.biletalsat.com/Uploads/Activities/futbol-kars-ilas-malari4-320x190_320x190.jpg",
        "https://iatkv.tmgrup.com.tr/689c90/616/321/0/0/958/499?u=https%3A%2F%2Fitkv.tmgrup.com.tr%2F2020%2F11%2F27%2F1606460785114.jpg",
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
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
              const Text("HAMMAL",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              SizedBox(
                width: 95,
              ),
              const Icon(
                Icons.celebration_outlined,
                color: Colors.white,
              ),
            ],
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, 'login');
            },
            child: const Icon(Icons.arrow_back),
          )),
      body: SizedBox(
        child: ListView(
          children: [
            Center(
              child: image(imageList),
            ),
            logo(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.32,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    children: [
                      isAra(context, "burgerqueen", "İŞ ARA"),
                    ],
                  ),
                  Stack(
                    children: [
                      isVer(context, "burgerx", "İŞ VER"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Container logo() {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent, width: 10),
        borderRadius: BorderRadius.circular(30)),
    child: const Text(
      "HAMMAL",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color.fromARGB(255, 2, 34, 121),
        fontSize: 50,
      ),
    ),
  );
}

Container isVer(BuildContext context, String photo, String company) {
  return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Column(
        children: [
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 1.5),
                    )
                  ]),
              height: MediaQuery.of(context).size.height * 0.22,
              width: MediaQuery.of(context).size.height * 0.22,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'isver');
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$company",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ));
}

Container isAra(BuildContext context, String photo, String company) {
  return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Column(
        children: [
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 1.5),
                    )
                  ]),
              height: MediaQuery.of(context).size.height * 0.22,
              width: MediaQuery.of(context).size.height * 0.22,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'isara');
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$company",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ));
}

Container image(List<String> imageList) {
  return Container(
      child: CarouselSlider(
          options: CarouselOptions(
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlay: true,
          ),
          items: imageList
              .map((e) => ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.network(
                          e,
                          width: 300,
                          height: 100,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ))
              .toList()));
}
