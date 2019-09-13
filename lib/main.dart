import 'package:flutter/material.dart';
import 'package:smartfarmland/ui/Smartfarm.dart';
import 'package:smartfarmland/utils/sign_in.dart';

void main()=> runApp(Main());



class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Signin(),
    );
  }
}

class Signin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(


        body:Container(

          color: Colors.white,
          child: Center(
            child: Column(
//            mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlutterLogo(size: 150),
                SizedBox(height: 50),
//                _signInButton(),
                OutlineButton(
                  splashColor: Colors.grey,
                  onPressed: () {signInWithGoogle().whenComplete(() {
                    Navigator.of(context).push(
                        _createRoute()
                    );
                  });},
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                  highlightElevation: 0,
                  borderSide: BorderSide(color: Colors.grey),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(image: AssetImage("images/google_logo.png"), height: 35.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Sign in with Google',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}


Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context,animation,secondaryAnimation) => Smartfarm(),
    transitionsBuilder: (context,animation,secondaryAnimation,child) {
      var begin=Offset(1.0,0.0);
      var end = Offset.zero;
      var curve = Curves.ease;
      var tween = Tween(begin : begin , end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );

    },
  );
}



