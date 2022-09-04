import 'package:flutter/material.dart';

import '../widgets/cutom_form.dart';

class singupPage extends StatelessWidget {
  const singupPage({Key? key}) : super(key: key);
  static const routeName = '/singupPage';


  @override
  Widget build(BuildContext context) {
    return SafeArea( 
      child: Scaffold(
        backgroundColor: Color.fromRGBO(32, 25, 43, 1),
        body: SingleChildScrollView(
          child: Column(
            children: [
             Stack(
               children: [
                 Container(
                   child: Image.asset('assetes/im1.png'),
                 ),
                 Positioned(
                   bottom: 50,
                   left: 110,
                   child: Text(
                     'Enter your data',
                     style: TextStyle(
                         color: Colors.white,
                         fontSize:25,
                         fontWeight: FontWeight.bold),
                   ),
                 ),
               ],
             ),
              customForm() ,
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/teamDataPage');

                },
                child: Text(
                  '    Continue    ',
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


            ],
          ),
        ),
      ),
    );
  }
}
