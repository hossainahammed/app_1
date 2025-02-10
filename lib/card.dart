import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';
void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
        debugShowCheckedModeBanner: false);

  }

}

class HomeActivity extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Home......."),

      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          shadowColor:Color.fromRGBO(33, 191, 115, 1),
          color: Color.fromRGBO(33, 191, 115, 1),
          elevation: 80,
          child: SizedBox(
            height: 200,
            width: 200,
            child: Center(child: Text('This is card'),),
          ),
        ),

      ),
    );
  }
}


