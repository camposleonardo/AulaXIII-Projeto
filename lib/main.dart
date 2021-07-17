import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  title: 'teste',
  home:MyApp(),
));
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Home - Focas'),
          centerTitle: true,
          titleTextStyle: TextStyle(color:Colors.white),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset(
              'imagens/a.png',
            ),
            Text('Focas Marinhas\n\n'
                'Conheça um pouco mais sobre os mamiferos aquaticos.',
              textAlign: TextAlign.center,
              style: TextStyle(
            color: Colors.black,
            fontSize: 25,
                  fontWeight: FontWeight.w700,
            ),
            ),
            Image.asset("imagens/redesociais.png"),

            new SizedBox(
                width: 125,
                height: 25,
                child: new RaisedButton(  color:Colors.black,
                  onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TelaDois()));
                  },
                  child:new Text(
                    "Entrar",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w700

                    ),


                  ),
                )

            ),

          ],

        )
        ),
        ),
      );
  }
}

class TelaDois extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Habitat - Focas'),
        centerTitle: true,
        titleTextStyle: TextStyle(color:Colors.white),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text("Localização Geografica"),
          ),
          ListTile(
            leading: Icon(Icons.whatshot),
            title: Text("Aquecimento Global"),
          ),
        new SizedBox(
           width: 125,
            height: 25,
          child: new RaisedButton(  color:Colors.black,
             onPressed: (){Navigator.push(context,
             MaterialPageRoute(builder: (context) => Telatres()));
                },
               child:new Text(
                            "Entrar",
                              style: TextStyle(
                                color: Colors.white,
                                  fontSize: 17,
                                    fontWeight: FontWeight.w700
                                  ),),),),
          new SizedBox(
            width: 125,
            height: 25,
            child: new RaisedButton(  color:Colors.black,
              onPressed: (){Navigator.pop(context);
              },
              child:new Text(
                "Voltar",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w700
                ),),),),],
      ),
    );
  }
}

class Telatres extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Habitat - Focas'),
        centerTitle: true,
        titleTextStyle: TextStyle(color:Colors.white),
        backgroundColor: Colors.black,
      ),
      body: ListView(
          children: <Widget>[
      ListTile(
      leading: Icon(Icons.map),
      title: Text("É uma das espécies mais amplamente distribuídas de pinípedes (morsas, leões-marinhos, lobos-do-mar e focas), elas são encontradas em águas costeiras do norte do Atlântico e do Pacífico, no Mar Báltico e no Mar do Norte."),
    ),
            ListTile(
              leading: Icon(Icons.whatshot),
              title: Text("O Ártico é o barômetro das mudanças climáticas, assinala o estudo, publicado na revista Royal Society Biology Letters.Com a velocidade das mudanças, que faz com que a adaptação genética seja impossível, os pesquisadores partiram do princípio de que a adaptação dos comportamentos, em particular dos hábitos alimentares, seria, provavelmente, a primeira resposta observável nos ecossistemas."),
            ),
    new SizedBox(
    width: 125,
    height: 25,
    child: new RaisedButton( color:Colors.black,
    onPressed: (){Navigator.pop(context);
    },
    child:new Text(
    "Voltar",
    style: TextStyle(
    color: Colors.white,
    fontSize: 17,
    fontWeight: FontWeight.w700
    ),
    ),
    ),
    )
          ],
    ),
    );
  }
}