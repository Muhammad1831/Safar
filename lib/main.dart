import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Model/Information.dart';
import 'dart:developer' as developer;
import 'package:expandable_text/expandable_text.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  double imageSize = 70;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    // show size of screen in debug console
    developer.log('size screen ${size.width}');
    developer.log('size screen ${size.height}');

    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Stack(
          children: [
            Container(
              height: size.height / 1.85,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
            ),
            // image background
            Container(
              height: size.height / 2.1,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(65),
                      bottomLeft: Radius.circular(65)),
                  image: DecorationImage(
                      image: AssetImage(safarList[_selectedIndex].image),
                      fit: BoxFit.cover)),
            ),
            // head icon
            Positioned(
              top: 20,
              left: 15,
              right: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // arrow_back icon
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(100, 255, 255, 255),
                        shape: BoxShape.circle),
                    child: const Icon(Icons.arrow_back_ios_new),
                  ),
                  // heart icon
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(100, 255, 255, 255),
                        shape: BoxShape.circle),
                    child: const Icon(
                      CupertinoIcons.heart,
                    ),
                  ),
                ],
              ),
            ),
            // list image
            Positioned(
              top: 100,
              right: 10,
              child: SizedBox(
                width: size.width / 4.5,
                height: size.height / 2.55,
                child: ListView.builder(
                  itemCount: safarList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                _selectedIndex = index;
                              });
                            },
                            child: imageItem(
                              selectedIndex: _selectedIndex,
                              imageSize: imageSize,
                              index: index,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            // name place & country & continent
            Positioned(
              bottom: 90,
              left: 45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    safarList[_selectedIndex].name,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        CupertinoIcons.placemark_fill,
                        color: Colors.white,
                        size: 18,
                      ),
                      Text(
                        '${safarList[_selectedIndex].country}, ${safarList[_selectedIndex].continent}',
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                // distance & temp & rating
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: const BorderSide(
                            color: Color.fromARGB(70, 0, 0, 0),
                            width: 1,
                          )),
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 15, bottom: 20),
                              child: Text(
                                'Distance',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Text(
                              safarList[_selectedIndex].distance + ' Km ',
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 120, 202, 222),
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: const BorderSide(
                            color: Color.fromARGB(70, 0, 0, 0),
                            width: 1,
                          )),
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 15, bottom: 20),
                              child: Text(
                                'Temp',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Text(
                              safarList[_selectedIndex].temp + '\u00B0 C',
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 120, 202, 222),
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: const BorderSide(
                            color: Color.fromARGB(70, 0, 0, 0),
                            width: 1,
                          )),
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 15, bottom: 20),
                              child: Text(
                                'Rating',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Text(
                              safarList[_selectedIndex].rating,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 120, 202, 222),
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // discription & readmore
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Discription',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 100,
                        width: double.infinity,
                        child: ListView(
                          children: [
                          ExpandableText(
                            safarList[_selectedIndex].discription,
                            expandText: 'Readmore',
                            collapseText: 'Readless',
                            maxLines: 4,
                            linkColor: Color.fromARGB(255, 246, 22, 145),
                            linkStyle: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                            expandOnTextTap: true,
                            collapseOnTextTap: true,
                            textAlign: TextAlign.left,
                          ),
                        ]),
                      )
                    ],
                  ),
                ),
                // totalprice & next button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 25, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Total Price',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            '\$' + safarList[_selectedIndex].price,
                            style: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black,
                        ),
                        child: const Icon(
                          Icons.arrow_forward_ios, 
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    )                 
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    )));
  }
}

class imageItem extends StatelessWidget {
  final int _selectedIndex;
  final double imageSize;
  final int index;

  const imageItem({
    super.key,
    required this.index,
    required int selectedIndex,
    required this.imageSize,
  }) : _selectedIndex = selectedIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: _selectedIndex == index ? imageSize + 15 : imageSize,
      height: _selectedIndex == index ? imageSize + 15 : imageSize,
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: _selectedIndex == index
              ? Color.fromARGB(255, 244, 210, 19)
              : Colors.white,
        ),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(safarList[index].image),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
