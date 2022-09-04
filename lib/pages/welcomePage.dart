import 'package:flutter/material.dart';

class welcomepage extends StatelessWidget {
  const welcomepage({Key? key}) : super(key: key);
  static const routeName = '/welcomepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(32, 25, 43, 1),
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Image.asset('assetes/im1.png'),
            ),
            SizedBox(height: 10,),
            Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            Text(
              'Are you ready for new challenge ? ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            Text(
              'Lets Start',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 80,),
            Container(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                },
                child: Text(
                  '    Log in   ',
                  style: const TextStyle(
                      fontSize: 25, color: Color.fromRGBO(32, 25, 43, 1)),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(255, 195, 0, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.red)))),
              ),
            ),
            Container(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/singupPage');

                },
                child: Text(
                  '    Sing up    ',
                  style: const TextStyle(
                      fontSize: 25, color: Color.fromRGBO(32, 25, 43, 1)),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(255, 195, 0, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.red)))),
              ),
            ),

          ],
        ),
      ),

    );
  }
}




