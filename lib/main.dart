import 'package:app_1/simple_navigation.dart';
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
  void simple_navigation(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SampleNavigationPage()),
    );
  }


  MyAlertDialog(context){
    return showDialog(context: context, builder: (BuildContext context){
      return Expanded(
          child: AlertDialog(
              title : Text(" Alert !"),
              content: Text("Do you want to delete"),
              actions: [
               TextButton(onPressed: () {Mysnackbar("Delete Success", context);
               Navigator.of(context).pop();}, child: Text("Yes")),
              TextButton(onPressed: () {Navigator.of(context).pop();}, child: Text("No")),


      ],));
    });
    
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30), // Ensures image gets rounded corners
                child: Image.network(
                  "https://scontent.fjsr13-1.fna.fbcdn.net/v/t39.30808-6/466125960_2020752345026508_9214786340302204417_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGMeszwOGGsfvWMgQ3A8J69bkNkgIHz0-9uQ2SAgfPT74qaHqukmway9KFhLEapkhaQz6FKwMiuusK-LDp4vgI-&_nc_ohc=-OQ9veC84V4Q7kNvgHLF8-H&_nc_zt=23&_nc_ht=scontent.fjsr13-1.fna&_nc_gid=AxnrsKZMU2qcKCl8K4C6Q20&oh=00_AYCjDVsDgD1YDj65xZ60sRTRh579C8eVX6oqLx3sDUglTA&oe=67A4D5FA",
                  fit: BoxFit.cover,
                ),
              ),
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
              TextButton(
                  onPressed: () {
                    simple_navigation(context);

                  },
                  child: Text('Simple navigation Button')),
              //ElevatedButton(onPressed: (){Mysnackbar("I am Elevated Button", context);}, child: Text('Elevated Button'),style:buttonStyle,),
              OutlinedButton(onPressed: (){Mysnackbar("I am Outlined Button", context);},style:buttonStyle, child: Text('Outlined Button'),),
              ElevatedButton(onPressed: (){MyAlertDialog(context);},style:buttonStyle, child: Text('Click me'),),
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