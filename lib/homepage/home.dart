import "package:flutter/material.dart";
import "package:uidesign/Content.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        bottomNavigationBar: ClipRRect(
     borderRadius: BorderRadius.only(topRight: Radius.circular(10),
   topLeft: Radius.circular(10)),
   child: BottomNavigationBar(
     backgroundColor: Colors.purple,
     selectedItemColor: Colors.white,
     unselectedItemColor: Colors.white60,
     type: BottomNavigationBarType.fixed,
     items:  [
       BottomNavigationBarItem(
         icon: Icon(Icons.home),
         label: 'Home',
       ),
       BottomNavigationBarItem(
        icon: Icon(Icons.bar_chart),
         label: 'Analytics',
       ),
       BottomNavigationBarItem(
         icon: Icon(Icons.notifications),
    label: 'Notifications',
       ),
       BottomNavigationBarItem(
         icon: Icon(Icons.settings),
         label: 'Settings',
       ),
     ],
   ),
 ),

     body:   Container(
        color: Colors.purple.shade200,
        child: Stack(
          children: [
            Positioned(
              height: screenHeight*.55,
              bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                        color:Colors.white.withOpacity(0.5),
                  ) , height: screenHeight/2,)),
            Padding(
              padding: EdgeInsets.all(10.0),
              child:Content()
                ),
          ],
        )
     ));
  }
}
