import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'JIWON',
      home: Grade(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff36393f),
      appBar: AppBar(
        title: const Text('JIWON'),
        backgroundColor: Color(0xff202225),
        centerTitle: true,
        elevation: 0.5,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 30),
              child:Center(
                child:CircleAvatar(
                  backgroundImage: AssetImage('assets/test.jpg'),
                  radius: 60,
                ),
              ),
            ),

            Divider(
              height: 60.0,
              color:Colors.grey[850],
              thickness: 0.5,
              endIndent: 30,
            ),
            const Text('NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0, //철자간의 간격
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text('LEE JI WON',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),),
            const SizedBox(
              height: 30,
            ),
            const Text('JIWON Power Level',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0, //철자간의 간격
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text('14',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  color: Color(0xff34e77a),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('using lightsaber',
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                      color: Color(0xff34e77a)
                    )
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  color: Color(0xff34e77a),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('face hero tattoo',
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                      color: Color(0xff34e77a),
                    )
                ),

              ],
            ),
            Row(
              children: [
                Icon(
                    Icons.check_circle_outline,
                    color: Color(0xff34e77a),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('fire flames',
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                      color: Color(0xff34e77a),
                    )
                ),
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: ,
              ),
            )
          ],
        ),
      )
    );
  }
}