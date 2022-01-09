import 'package:flutter/material.dart';
import 'main.dart';
import 'page2.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

void main() {
  runApp(
    MyApp(),

  );
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Curriculum Vitae',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
      home: Page_Formations(),
    );
  }
}
class Page_Formations extends StatefulWidget{
  @override
  _Page_Formations createState() => _Page_Formations();

}

class _Page_Formations extends State<Page_Formations>{
  @override
  Widget build (BuildContext context){
    return new Scaffold(
      body: new Container(
        decoration:new BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Formation Académique',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Prata',
                fontSize: 25.0,
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
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: ' Depuis 2020 : Cycle d ingénieur ITS'
                                    '\n                     EPISEN- UPEC',
                                    //textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Prata',
                                      fontSize: 15.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        launch('https://episen.u-pec.fr/formations/technologies-pour-la-sante-its');
                                      },
                                  ),
                                ],
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
                          Center(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '  2020: Master 1 en informatique biomédicale '
                                        '\n                         Université Paris 13',
                                    //textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Prata',
                                      fontSize: 15.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        launch('http://odf.univ-paris13.fr/fr/offre-de-formation/feuilleter-le-catalogue-1/sciences-technologies-sante-STS/master-lmd-XB/master-sante-publique-parcours-informatique-biomedicale-program-bi4inb-116-2.html');
                                      },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                //onPressed: () => _launchUrl('https://www.u-pec.fr/fr/formation/niveau-l/licence-sciences-de-la-vie-et-de-la-terre-parcours-biologie-sante'),
              ),
            ),

            Container(
              child: CarteReutilisable(
                couleur: Colors.deepPurpleAccent,
                cardChild:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '   2019: Licence en génie biomédical '
                                  '\n            ESGB - UM6SS',
                              //textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Prata',
                                fontSize: 15.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launch('https://esgb.um6ss.ma/technicien-biomedical/');
                                },
                            ),
                          ],
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
                    Center(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '   2016: Baccalauréat SC physique-chimie'
                                  '\n                Groupe Scolaire Azhar Erriad',
                              //textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Prata',
                                fontSize: 15.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launch('https://www.gsae.ma/');
                                },
                            ),
                          ],
                        ),
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
      height: 70.0,
      decoration: BoxDecoration(
        color: couleur,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}