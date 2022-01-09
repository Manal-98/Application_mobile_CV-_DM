import 'package:flutter/material.dart';
import 'main.dart';
import 'Page_Autres.dart';
import 'Page_experiences.dart';
import 'Page_Formations.dart';
import 'Page_langues.dart';

void main() {
  runApp(
    MyApp(),
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Curriculum Vitae',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: second_page(),
    );
  }
}

class second_page extends StatefulWidget{
  @override
  _second_page createState() => _second_page();
}
class _second_page extends State<second_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => First(),
                  ),
                );
              },
              child: CarteReutilisable(
                couleur: Colors.deepPurpleAccent,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage('images/manal.jpg'),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Manal NEJMI',
                      style: TextStyle(
                        fontFamily: 'Prata',
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Curriculum Vitae',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Prata',
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            Container(
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page_Formations(),
                        ),
                      );
                    },
                    child: CarteReutilisable(
                      couleur: Colors.deepPurpleAccent,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: <Widget>[
                          Text(
                            'Académique',
                            style: TextStyle(
                              fontFamily: 'Prata',
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page_experiences(),
                        ),
                      );
                    },
                    child: CarteReutilisable(
                      couleur: Colors.deepPurpleAccent,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Professionnel',
                            style: TextStyle(
                              fontFamily: 'Prata',
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page_langues(),
                        ),
                      );
                    },
                    child: CarteReutilisable(
                      couleur: Colors.deepPurpleAccent,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Langues',
                            style: TextStyle(
                              fontFamily: 'Prata',
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page_Autres(),
                        ),
                      );
                    },
                    child: CarteReutilisable(
                      couleur: Colors.deepPurpleAccent,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Autres',
                            style: TextStyle(
                              fontFamily: 'Prata',
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
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
class CarteReutilisable extends StatelessWidget {
  final Color couleur;
  final Widget cardChild;
  CarteReutilisable ({required this.couleur, required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10.0),
      width: 150.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: couleur,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}


