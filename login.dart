

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:shared_preferences/shared_preferences.dart';


class screenlogin extends StatefulWidget {
  const  screenlogin({super.key});

  @override
  State<screenlogin> createState() => _screenloginState();
}

class _screenloginState extends State<screenlogin> {

  final _usernamecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  bool _isdatematched = true;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child:Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  TextFormField(
                    controller: _usernamecontroller,
                    decoration:const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Username',
                    ),
                    //validator:(_){
                      //if(_isdatematched){
                        //return null;
                      //}else{
                        //return "error";
                      //}
                    //},
                  validator: (value) {
                  if (value == null || value.isEmpty) {
                   return 'Please enter username';
                  }
                    return null;
                    },
                  ),
                 const SizedBox(
                    height: 20,
                  ),
                  
                  TextFormField(
                    controller: _passwordcontroller,
                    obscureText: true,
                     decoration: const InputDecoration(
                      fillColor: Color.fromARGB(255, 0, 162, 255),
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                      
                  ),
                  //validator:(_){
                    //  if(_isdatematched){
                      //  return null;
                      //}else{
                        //return "error";
                      //}
                  //}
                  validator: (value) {
                  if (value == null || value.isEmpty) {
                   return 'Please enter Password';
                  }
                    return null;
                  },
                  ),
                  
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Visibility (
                        visible: !_isdatematched,
                        child:const   Text('Username and Password does not Match',
                        style: TextStyle(color: Colors.red),)),
                      ElevatedButton.icon(onPressed:(){
                        if(_formkey.currentState!.validate()){
                          checkLogin(context);
                        }else{}
                          
                        
                      },icon:const Icon(Icons.check) ,label: const Text('Login'),),
                    ],
                  ),
                ],),
              ),
            ),
          
        )
      ),
    );
  }

  void checkLogin(BuildContext context)async{
  final _username = _usernamecontroller.text;
   final _password = _passwordcontroller.text;
   if(_username == _password){

   final _sharedPrefs = await SharedPreferences.getInstance();
   await _sharedPrefs.setBool(SAVE_KEY_NAME, true);

   }else{
    final _errormessage = 'Username and Password does not Match';
     //snackbar
    ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(behavior: SnackBarBehavior.floating,
    margin: EdgeInsets.all(10),
    content:Text(_errormessage),
    backgroundColor:const  Color.fromARGB(255, 255, 0, 0),
   ),);
    setState(() {
     _isdatematched = false;
   });
   }
    
   
}
}