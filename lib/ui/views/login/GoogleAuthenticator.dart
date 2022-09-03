import 'package:examen_final_flutter/UI/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants/colors.dart';
import '../../../utils/Util.dart';
import 'Authenticator.dart';
class GoogleAuthenticator extends StatefulWidget {
  const GoogleAuthenticator({Key? key}) : super(key: key);
  _GoogleAuthenticator createState() => _GoogleAuthenticator();
}

class _GoogleAuthenticator extends State<GoogleAuthenticator>{
  String _imageBackground = "imagefondo.jpg";
  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return Scaffold(
   /*     body: Center(
            child: MaterialButton(
              onPressed:() async {
                User? user = await Authenticator.iniciarSesion(
                    context: context);
                print(user?.displayName);
              },
              color: Colors.blue,
              child: Icon(FontAwesomeIcons.google),
              textColor: Colors.white,
            )
        )*/
      body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.55),
                    BlendMode.darken),
                image: AssetImage("assets/images/" + _imageBackground),
                fit: BoxFit.fitHeight),
          ),
          child: _bodyLogin()));
  }
  Widget _bodyLogin() {
    return SingleChildScrollView(
      child: Container(
          height: Util.sizeScreen(context: context).height,
          child: Padding(
            padding:
            const EdgeInsets.only(left: 16, right: 16, top:
            48, bottom: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(height: 300),
                const Text(
                  "ExamApp",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Container(height: 16),
                const Text(
                  "Ejemplo de aplicación",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Container(height: 8),
                const Text(
                  "Aplicación de ejemplo para el Examen",
                  style: TextStyle(fontSize: 16, color:
                  Colors.white),
                  textAlign: TextAlign.center,
                ),
                Spacer(flex: 1),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      User? user = await Authenticator.iniciarSesion(
                          context: context);
                      print(user?.displayName);
                      if(user!= null){
                        Navigator.of(context).pushReplacementNamed("/home");
                      };
                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(top: 16,
                            bottom: 16),
                        textStyle: TextStyle(fontSize: 16,
                            color: Colors.white),
                        primary: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(30))),
                    child: Text(
                      "Iniciar Sesión Google",
                      style: TextStyle(color:
                      Colors.white),
                    ),
                  ),
                ), //container que interesa
                Container(height: 20),
              ],
            ),
          )),
    );
  }
  void _onLoginTap() {
  }
}
