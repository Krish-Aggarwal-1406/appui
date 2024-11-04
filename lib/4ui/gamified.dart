import 'package:flutter/material.dart';
import '/loginpage.dart';
class GamifiedMemoryPage extends StatelessWidget {
  const GamifiedMemoryPage({super.key});

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
        child:  Column(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Container(
                height:scrheight*.4 ,
                child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/brainpic.png')),
              ),
              Text(
                  style: TextStyle(
                      fontSize:25,
                      color: Colors.white),
                  "Gamified Memory"),
              SizedBox(height: 10),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 20),
                child: Text(textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize:15,
                    color: Colors.white),
                    'Gamified Memory turns cognitive exercises into fun games to enhance your memory skills.Perfect for all ages, it makes brain training an enjoyable part of your daily routine. Level up your memory game'),
              ),
              SizedBox(height: 10),
              ElevatedButton(style: ButtonStyle(

                  backgroundColor: WidgetStateProperty.all( Color(0xFF26184A)),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color:  Color(0xFF26184A))
                      )
                  )
              )
                  ,onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));
                  }, child: Text(style: TextStyle(color: Colors.white),'Skip'))
            ]
        ),),
    );
  }
}
