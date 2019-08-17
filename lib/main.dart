import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First App",
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("App Bar Title"),
          ),
          body: new Text(printStar()+"\n\n"+printSquare())
      ),
    );
  }

  printStar(){                    //function to print stars
    String temp = "";
    for(int i=0; i<4; i++){

      String t = "";
      for(int j=0; j<=i; j++)
        t=t+"* ";

      temp = temp+t+"\n";
    }

    return temp;
  }

  //function to print square of stars
  printSquare(){

    String temp = "";
    for(int i=0;i<5;i++){

      String t="";
      for(int j = 0;j<5;j++){
        if(i==0 || i==4)
          t=t+"* ";
        else {
          if (j == 0 || j == 4)
            t = t + "*";
          else
            t = t + "   ";
        }
      }

      temp = temp+t+"\n";
    }
    return temp;
  }
}