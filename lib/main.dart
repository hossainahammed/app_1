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
        debugShowCheckedModeBanner: false,
        home : HomeActivity());
  }

}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  Mysnackbar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content:Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title:Text("My APP Bar......."),
      titleSpacing: 0,
      //centerTitle: true,
      toolbarHeight: 100,
      toolbarOpacity: 1,
      elevation: 6,
      backgroundColor: Colors.green,
      actions: [
        IconButton(onPressed: () { Mysnackbar("I am Comments",context);},icon: Icon(Icons.comment)),
        IconButton(onPressed: () { Mysnackbar("I am search",context);},icon: Icon(Icons.search)),
        IconButton(onPressed: () { Mysnackbar("I am settings",context);}, icon: Icon(Icons.settings)),
        IconButton(onPressed: () { Mysnackbar("I am email",context);}, icon: Icon(Icons.email)),
        IconButton(onPressed: () {Mysnackbar("I am contact_emergency",context);}, icon: Icon(Icons.contact_emergency))
      ],

      //body: Text("Hello"),
      //endDrawer:(),
      //drawer: () ,
     // bottomNavigationBar:  (),
      //floatingActionButton: (),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor:Colors.pinkAccent,
        onPressed: (){
          Mysnackbar("I am Floating action button", context);
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.message),label: "Contact"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),

          ],
        onTap: (int index){
          if(index==0){
            Mysnackbar("I am home bottom menu", context);
          }
          if(index==1){
            Mysnackbar("I am Contact bottom menu", context);

          }
          if(index==2){
            Mysnackbar("I am Profile bottom menu", context);

          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Hossain")),
            ListTile(leading:Icon(Icons.home),title: Text("Home"),onTap: (){Mysnackbar("Home", context);},),
            ListTile(leading:Icon(Icons.contact_emergency),title: Text("Contact"),onTap: (){Mysnackbar("Contact", context);},),
            ListTile(leading:Icon(Icons.email),title: Text("Email"),onTap: (){Mysnackbar("Email", context);},),
            ListTile(leading:Icon(Icons.person),title: Text("Profile"),onTap: (){Mysnackbar("Profile", context);},),
            ListTile(leading:Icon(Icons.phone),title: Text("Phone"),onTap: (){Mysnackbar("Phone", context);},),


          ],
        ),
      ),

    );
  }


}