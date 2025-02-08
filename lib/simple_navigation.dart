import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';
void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false);

  }

}

class SampleNavigationPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Home......."),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1("This is from home Activity 1")));
          }, child: Text("Go Activity 1")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2("This is from home Activity 2")));
          }, child: Text("Go Activity 2")),
        ],
      ),
    );
  }
}

class Activity1 extends StatelessWidget {
  String msg ;
   Activity1(
      this.msg,
  {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(msg),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2("This is from activity 1 to activity 2 ")));
          }, child: Text("Go Activity 2"),),

        ],
      ),
      
    );
  }
}
class Activity2 extends StatelessWidget {
  String msg;
   Activity2(
      this.msg,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(msg),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1("This is from activity 2 to activity 1 ")));
          }, child: Text("Go Activity 1"),),

        ],
      ),
    );
  }
}