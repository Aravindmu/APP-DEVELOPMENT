import 'package:flutter/material.dart';
import 'package:flutter_application_1/add.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/messages.dart';
import 'package:flutter_application_1/page.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
   int _currentselectedindex = 0;
  final pages = [
    detailspage(),
    addpage(),
    messagepage(),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.message),),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: Text('Home Screen'),
              backgroundColor: Color.fromARGB(255, 132, 67, 218),
              expandedHeight: 20,
              floating: true,
              actions: [
                IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return profilepage();
            }
            )
            );
          },icon: const Icon(Icons.person),),
          IconButton(onPressed: (){signout(context);}, icon:const Icon(Icons.exit_to_app))
              ],
              ),
          ];
        },
        body: pages[_currentselectedindex],
      ),
        
      
            
      
        
      
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 246, 232, 255),
        currentIndex: _currentselectedindex,
        onTap: (newindex){
          setState(() {
            _currentselectedindex = newindex;
          });
        },
        items:const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.add_circle_rounded),label: 'Add'),
        BottomNavigationBarItem(icon: Icon(Icons.category),label: 'category'),
        ]),

    );
  }
  signout(BuildContext context)async{
    final _sharedPrefs = await SharedPreferences.getInstance();
    _sharedPrefs.clear();
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){
      return screenlogin();
    },
    ), (Route)=>false);

  }

}