import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uidesign/signuppage.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var scrheight=MediaQuery.of(context).size.height;
    var scrwidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body:Container(
        padding: EdgeInsets.symmetric(vertical: 50),

          decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFCEB9F9), Color(0xFF796CEE)], )
      ),
          alignment: Alignment.center,
          child:SingleChildScrollView(
            child: Column(
               children: [
                 Image(image: AssetImage('assets/Screenshot_2024-10-29_204944-removebg-preview__1_-removebg-preview.png')),
                 Padding(
                   padding: EdgeInsets.symmetric(horizontal: 15),
                   child: Material(
                     elevation: 10,
                     borderRadius: BorderRadius.circular(15),
                     child: Container(
                       padding: EdgeInsets.symmetric(horizontal: 15),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                           gradient: LinearGradient(begin: Alignment.topLeft,
                             end: Alignment.bottomRight,
                             colors: [Color(0xFFCEB9F9), Color(0xFF796CEE)], )
                       ),
                       child:Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Text(style:TextStyle(fontSize: 30) ,'Log In!'),
                           Text(style: TextStyle(fontSize: 10),
                               'Glad to have your back'),
                           SizedBox(height: 20,),
                           TextField(
                             decoration: InputDecoration(
                               filled: true,
                               fillColor: Color(0xFFCDB8F8),
                               labelText: 'Email',
                               border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(15),
                               
                               )
                             ),
                           ),
                           SizedBox(height: 5,),
                           TextField(
                             obscureText: true,
                             decoration: InputDecoration(
                               filled: true,
                               fillColor: Color(0xFFCDB8F8),
                               labelText: 'Password',
                               suffixIcon: Container(
                                   margin:EdgeInsets.symmetric(vertical: 10),
                                   child: FaIcon(FontAwesomeIcons.eyeSlash)),
                               border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(15),
                               )
                             ),
                           ),
                           SizedBox(height: 5,),
                           Container(
                             width:scrwidth*.8 ,
                             child: ElevatedButton(
                               style: ButtonStyle(
                                 backgroundColor: WidgetStateProperty.all(Color(
                                     0xFF26184A))
                               ),
                                 onPressed: (){}, child: Text(style: TextStyle(
                               color: Colors.white
                             ),textAlign:TextAlign.center,'Login')),
                           ),
                           SizedBox(height:20 ,),
                           Container(
                             margin: EdgeInsets.only(right: 10),
                             width:scrwidth*.8 ,
                             child: Text(textAlign: TextAlign.right,
                                 'Forgot Paasword ?'),
                           ),
                           SizedBox(height: 50,),
                           Container(
                             padding: EdgeInsets.symmetric(horizontal: 30),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                               children: [Text(
                                   style: TextStyle(
                                       color: Colors.black
                                   ),'Dont have an account'),
                                 InkWell(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));},
                                 child: Text(style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                   fontSize: 17,
                                   color: Color(0xFF533DA8),
                                 ),'Sign Up'),)
                              ],
                             ),
                           ),
                           SizedBox(height:20),
                           Text(
                               style: TextStyle(
                                   color: Colors.black
                               ),'------------Or Sign In With------------'),
                            SizedBox(height: 5,),
                           Container(
                             padding: EdgeInsets.symmetric(horizontal: 50),
                             width: scrwidth*.8,
                             height: scrheight*.055,
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(40)
                             ),
                             child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                               children: [
                               Container(height: scrheight*.04,
                               
                                   child: Image(fit: BoxFit.cover,image: AssetImage('assets/google icon photo.jpeg'))),
                               Text(style:TextStyle(
                                 fontWeight: FontWeight.bold,
                                 color:Colors.black
                               ),'Sign In With Gmail')
                             ],),
                           ),
                           SizedBox(height: 20,)
                         ],
                       ) ,
                     ),
                   ),
                 )
            
               ],
            ),
          )

      ),
    );
  }
}
