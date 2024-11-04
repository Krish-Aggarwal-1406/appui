import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uidesign/loginpage.dart';
import 'package:uidesign/pageview/pageview.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    var scrheight=MediaQuery.of(context).size.height;
    var scrwidth=MediaQuery.of(context).size.width;
    var  _email=TextEditingController();
    var  _name=TextEditingController();

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
                Image(
                  fit: BoxFit.cover,
                    height:scrheight*.25,
                    image: AssetImage('assets/Screenshot_2024-11-03_120912-removebg-preview.png')),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Material(
                    elevation: 10,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xFFCEB9F9), Color(0xFF796CEE)], )
                      ),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(style:TextStyle(fontSize: 25) ,'Create Your Account'),
                          SizedBox(height: 20),
                          SizedBox(
                            height: scrheight*.06,
                            child: TextField(
                              controller: _name,
                              decoration: InputDecoration(
                                  suffixIcon: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),

                                      margin:EdgeInsets.symmetric(vertical: 10),
                                      child: FaIcon(FontAwesomeIcons.user)),
                                  filled: true,
                                  fillColor: Color(0xFFCDB8F8),
                                  labelText: 'Name',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),

                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          SizedBox(
                            height: scrheight*.06,
                            child: TextField(
                              controller: _email,
                              decoration: InputDecoration(
                                  suffixIcon: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                                      margin:EdgeInsets.symmetric(vertical: 10),
                                      child: FaIcon(FontAwesomeIcons.envelope)),
                                  filled: true,
                                  fillColor: Color(0xFFCDB8F8),
                                  labelText: 'Email',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),

                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          SizedBox(
                            height: scrheight*.06,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFCDB8F8),
                                  labelText: 'Password',
                                  suffixIcon: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),

                                      child: FaIcon(FontAwesomeIcons.eyeSlash)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          SizedBox(
                            height: scrheight*.06,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFCDB8F8),
                                  labelText: 'Confirm Password',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )
                              ),
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
                                onPressed: (){

                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PageViewPage(email:_email.text, name: _name.text)));
                                }, child: Text(style: TextStyle(
                                color: Colors.white
                            ),textAlign:TextAlign.center,'Sign Up')),
                          ),

                          SizedBox(height: 30,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [Text(
                                  style: TextStyle(
                                      color: Colors.black
                                  ),'Already have an account ?'),
                                InkWell(onTap:(){Navigator.pop(context);},
                                  child: Text(style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Color(0xFF533DA8),
                                  ),'Log In'),)
                              ],
                            ),
                          ),
                          SizedBox(height:20),
                          Text(
                              style: TextStyle(
                                  color: Colors.black
                              ),'------------Or Sign Up With------------'),
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
                                ),'Sign Up With Gmail')
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

