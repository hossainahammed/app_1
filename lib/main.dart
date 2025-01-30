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
 ButtonStyle buttonStyle= ElevatedButton.styleFrom(
  padding:EdgeInsets.all(25),
   backgroundColor: Colors.green,
   foregroundColor: Colors.white,
   shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40)))
  );
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 250,
              width: 250,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(color: Colors.black, width: 6),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.network(
                  "https://static-00.iconduck.com/assets.00/flutter-icon-2048x2048-ufx4idi8.png"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {
                    Mysnackbar("I am Text Button", context);
                  },
                  child: Text('Text Button')),
              ElevatedButton(onPressed: (){Mysnackbar("I am Elevated Button", context);}, child: Text('Elevated Button'),style:buttonStyle,),
              OutlinedButton(onPressed: (){Mysnackbar("I am Elevated Button", context);}, child: Text('Elevated Button')),
              
            ],
          ),
        ],
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
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.grey),
                  accountName: Text("Hossain Ahammed"),
                  accountEmail: Text("Info@Hossain.com"),
                  currentAccountPicture: Image.network("https://static-00.iconduck.com/assets.00/flutter-icon-2048x2048-ufx4idi8.png"),
                )),
            ListTile(leading:Icon(Icons.home),title: Text("Home"),onTap: (){Mysnackbar("Home", context);},),
            ListTile(leading:Icon(Icons.contact_emergency),title: Text("Contact"),onTap: (){Mysnackbar("Contact", context);},),
            ListTile(leading:Icon(Icons.email),title: Text("Email"),onTap: (){Mysnackbar("Email", context);},),
            ListTile(leading:Icon(Icons.person),title: Text("Profile"),onTap: (){Mysnackbar("Profile", context);},),
            ListTile(leading:Icon(Icons.phone),title: Text("Phone"),onTap: (){Mysnackbar("Phone", context);},),


          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.grey),
                  accountName: Text("Hossain Ahammed"),
                  accountEmail: Text("Info@Hossain.com"),
                  currentAccountPicture: Image.network("https://static-00.iconduck.com/assets.00/flutter-icon-2048x2048-ufx4idi8.png"),
                )),
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