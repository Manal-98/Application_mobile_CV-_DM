import 'page2.dart';
import 'main.dart';
import 'package:flutter/material.dart';

class Page_langues extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.jpg"),
              fit: BoxFit.fill,
            ),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>First(),
                    ),
                  );
                },
                child: CarteReutilisable(
                  couleur: Colors.deepPurpleAccent,
                  cardChild:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40.0,
                        backgroundImage: AssetImage('images/manal.jpg'),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Manal NEJMI',
                        style: TextStyle(
                          fontFamily: 'Prata',
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                'Langues',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Prata',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: CarteReutilisable(
                        couleur: Colors.deepPurpleAccent,
                        cardChild:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 20.0,
                              backgroundImage: AssetImage('images/france.png'),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Français',
                              style: TextStyle(
                                fontFamily: 'Prata',
                                fontSize: 20.0,
                                letterSpacing: 2,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: CarteReutilisable(
                        couleur: Colors.deepPurpleAccent,
                        cardChild:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 20.0,
                              backgroundImage: AssetImage('images/usa.jpg'),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Anglais',
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
                    Container(
                      child: CarteReutilisable(
                        couleur: Colors.deepPurpleAccent,
                        cardChild:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 20.0,
                              backgroundImage: AssetImage('images/maroc.jpg'),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Arabe',
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
                    Container(
                      margin:EdgeInsets.fromLTRB(0.0, 10.0, 200.0, 10.0),
                      child: Theme(
                        data: ThemeData(accentColor:Colors.blue),
                        child: FloatingActionButton(
                          child:Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return second_page();
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CarteReutilisable extends StatelessWidget {
  final Color couleur;
  final Widget cardChild;
  CarteReutilisable({required this.couleur, required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10.0),
      width: 250.0,
      height: 85.0,
      decoration: BoxDecoration(
        color: couleur,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
