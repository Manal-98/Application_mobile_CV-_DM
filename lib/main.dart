import 'package:flutter/material.dart';
import 'page2.dart';

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
      home: First(),
    );
  }
}
class First extends StatefulWidget{
  @override
  _First createState() => _First();

}
class _First extends State<First>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage("images/background.jpg"),
              fit: BoxFit.cover
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('images/manal.jpg'),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context){
                      return second_page();
                    }),
                  );
                },

              ),
              Text('Manal NEJMI',
                style: TextStyle(
                  fontFamily:'Lora',
                  fontSize: 25.0,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Élève-Ingénieur',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 15.0,
                  color: Colors.blueGrey,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.deepPurple,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    size:20.0,
                    color:Colors.purple.shade600,
                  ),
                  title: Text(
                    "+33 6 66 64 37 83",
                    style: TextStyle(
                      color:Colors.purple.shade400,
                      fontSize:20.0,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),

                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child:ListTile(
                  leading: Icon(
                    Icons.mail,
                    size: 20.0,
                    color:Colors.purple.shade400,
                  ),
                  title: Text(
                    "manal.nejmi@etu.u-pec.fr",
                    style: TextStyle(
                      color: Colors.purple.shade400,
                      fontSize: 20.0,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}


