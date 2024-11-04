import 'package:flutter/material.dart';
import './chatbot.dart';
class PrescriptionPage extends StatelessWidget {
  const PrescriptionPage({super.key});

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
              margin: EdgeInsets.only(right: 20),
              height:scrheight*.4 ,
              child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/vecteezy_doctor-female-with-face-mask-isolated-icon_-removebg-preview.png')),
            ),
            SizedBox(height: 10),
            Text(
                textAlign: TextAlign.center,
              style: TextStyle(
                fontSize:25,
                  color: Colors.white),
              "Prescription and Dosage tracker"),
            SizedBox(height: 10),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 20),
              child: Text(textAlign: TextAlign.center,
                  style: TextStyle(
                  fontSize:15,
                  color: Colors.white),
                  'Memory Box is a mobile based app backed by a web app that ensures compatibility and stability in its own accord'),
            ),
            SizedBox(height: 10),
            ElevatedButton(style: ButtonStyle(

              backgroundColor: WidgetStateProperty.all(Color(0xFF26184A)),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Color(0xFF26184A))
                    )
                )
            )
                ,onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatbotPage()));
                }, child: Text(
                    style: TextStyle(
                      color: Colors.white
                    ),'Lets Go!'))
          ]
        ),),
    );
  }
}
