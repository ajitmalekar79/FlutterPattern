import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  var line=List();
  @override
  Widget build(BuildContext context) {
    printStarWid();
    return MaterialApp(
      title: "My First App",
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("App Bar Title"),
          ),
          body: new Container(
            child: ListView.builder(itemBuilder: (BuildContext context, int index){
              if(index==0){
                return Card(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                    for(var pattern in line)
                    Text(pattern)
              ],
              ),
              );
              }else{
              return Card(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
              Row(
              children: <Widget>[
                for(int i=0;i<5;i++)
                Text("* ")
              ]
              ),
              for(int i=0;i<3;i++)
                Row(
                children: <Widget>[
                  Text("*          *")
                ]
                ),
              Row(
              children:<Widget>[
              for(int i=0;i<5;i++)
              Text("* ")
              ]
              )
              ],
              ),
              );
              }
            },
            itemCount: 2,),
          ),

      ),
    );
  }

  printStarWid(){                    //function to print stars
    String temp = "";
    for(int i=0; i<4; i++){

      String t = "";
      for(int j=0; j<=i; j++)
        t=t+"* ";

      line.add(t);
    }

    return temp;
  }
}