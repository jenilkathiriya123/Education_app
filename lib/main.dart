import 'package:flutter/material.dart';
import 'package:pr3_1/Pages/w3schools.dart';

import 'Pages/Tutorialspoint.dart';
import 'Pages/javapoint.dart';
import 'Pages/wikipedia.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Homepage(),
        'Wikipedia': (context) => wikipedia(),
        'W3School': (context) => schools(),
        'JavaPoint': (context) => java(),
        'TutorialPoint': (context) => tutorials(),
      },
    ),
  );
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text(
          "Educational Websites",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                onTap: (){
                  setState((){
                    Navigator.pushNamed(context,'JavaPoint');
                  });
                },
                child: Container(
                  height: 250,
                  width: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image/javaTpoint.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                onTap: (){
                  setState((){
                    Navigator.pushNamed(context,'Wikipedia');
                  });
                },
                child: Container(
                  height: 250,
                  width: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image/wikipidia.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                onTap: (){
                  setState((){
                    Navigator.pushNamed(context,'W3School');
                  });
                },
                child: Container(
                  height: 250,
                  width: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image/w3School.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                onTap: (){
                  setState((){
                    Navigator.pushNamed(context,'TutorialPoint');
                  });
                },
                child: Container(
                  height: 250,
                  width: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image/tutorialPoint.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
