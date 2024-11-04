import 'package:flutter/material.dart';
import './gamified.dart';
class ProgressTrackerPage extends StatelessWidget {
  const ProgressTrackerPage({super.key});

  @override
  Widget build(BuildContext context) {
    var scrheight=MediaQuery.of(context).size.height;
    var scrwidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xFFBF96F7), Color(0xFF796CEE)], )
      ),
        alignment: Alignment.center,
      child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              height:scrheight*.3 ,
              child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/progresstrackerimage-removebg-preview.png')),
            ),
            SizedBox(height: 10),
            Text(
                style: TextStyle(
                    fontSize:25,
                    color: Colors.white),
                "Progress Tracker"),
            SizedBox(height: 10),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 20),
              child: Text(textAlign: TextAlign.center,
                  style: TextStyle(
                  fontSize:15,
                  color: Colors.white),
                  'Track your goals and milestones with ease using Progress Tracker. Visualize your achievements and stay motivated on your journey to success.Perfect for personal and professional growth'),
            ),
            SizedBox(height: 10),
            ElevatedButton(style: ButtonStyle(

                backgroundColor: WidgetStateProperty.all( Color(0xFF26184A)),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Color(0xFF26184A))
                    )
                )
            )
                ,onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>GamifiedMemoryPage()));
                }, child: Text(
                    style: TextStyle(color: Colors.white),'Skip'))
          ]
      ),),
    );
  }
}
