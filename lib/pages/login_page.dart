import 'package:flutter/material.dart';

class login extends StatelessWidget {
  static const routeName = '/loginPage';

  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(32, 25, 43, 1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Image.asset('assetes/im1.png'),
            ),
            Container(
              height: 150,
              //child: Image.asset('assetes/m2.png'),

              child: Text(
                'Malaib',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 90,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/welcomepage');
                },
                child: Text(
                  '    Get Started    ',
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
