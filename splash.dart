
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class screensplash extends StatefulWidget {
  const screensplash({super.key});

  @override
  State<screensplash> createState() => _screensplashState();
}

class _screensplashState extends State<screensplash> {

//initial state
@override
  void initState() {
    checkUserLogin();
    super.initState();
  }

//didchangedependencies
@override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }


//dispose

@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }







  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(body:Center(child: Text('splash screeen',
    style: TextStyle(backgroundColor: Color.fromARGB(255, 102, 255, 0),
    fontSize: 50,
    fontWeight: FontWeight.bold),
    ),
    ),
    );
  }

  Future<void>gotoLogin() async{
    await Future.delayed(Duration(seconds:3),);
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
      return screenlogin();
    },
    ),
    );  
    }

    Future<void>checkUserLogin() async{
       await Future.delayed(Duration(seconds:3),);
      final _sharedPrefs = await SharedPreferences.getInstance();
      //_sharedPrefs.setBool(SAVE_KEY_NAME, true);
      final _userLoggedIn = _sharedPrefs.getBool(SAVE_KEY_NAME);
      if(_userLoggedIn == null || _userLoggedIn == false){
        gotoLogin();
      }else{
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
          return homescreen();
        },
        ),
        );
      }
    }
}