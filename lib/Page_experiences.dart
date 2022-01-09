import 'main.dart';
import 'page2.dart';
import 'package:flutter/material.dart';



class Page_experiences extends StatelessWidget {
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
                'Expériences Professionnelles',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Prata',
                  fontSize: 20.0,
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
                            Center(
                              child: Text(
                                '  Stage au sein du service cardiologie et logistique'
                                    '\n              Hopital Henri Mondor AP-HP',
                                style: TextStyle(
                                  fontFamily: 'Prata',
                                  fontSize: 15.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
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
                            Text(
                              '       Stage de recherche au centre Giovanni '
                              '\n     Centre National de la Recherche Scientifique',
                              style: TextStyle(
                                fontFamily: 'Prata',
                                fontSize: 15.0,
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
                            Text(
                              'Stage d initiation au sein du service biomédicale'
                              '\n             CHU Moulay Youssef au Maroc',
                              style: TextStyle(
                                fontFamily: 'Prata',
                                fontSize: 15.0,
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
      width: 400.0,
      height: 90.0,
      decoration: BoxDecoration(
        color: couleur,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
