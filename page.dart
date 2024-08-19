import 'package:flutter/material.dart';

class detailspage extends StatelessWidget {
  const detailspage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
          children: [
            ListTile(
              onTap: (){},//set function!!!!!
              trailing:  Wrap(
                spacing: 12,
                children: [
                  IconButton(onPressed: (){
                    showbottomsheet(context);
                  }, icon: Icon(Icons.message)),
                   IconButton(onPressed: (){
                    showarticlessheet(context);
                   }, icon: Icon(Icons.article)),
                  IconButton(onPressed: (){
                    showcallsheet(context);
                  }, icon: Icon(Icons.call)),
                  ],
              ),
              leading: CircleAvatar(
                child: Text('w'),radius: 30,
              ),
              title: Text('WORLD'),
              subtitle: Text('Messages'),
            ),
            Center(
              child: Card(
                elevation: 3,
                child: Container(
                  foregroundDecoration: ShapeDecoration(shape: RoundedRectangleBorder()),
                  height: 400,
                  width: 450,
                  decoration: BoxDecoration(color: Color.fromARGB(255, 72, 4, 88),
                  borderRadius: BorderRadius.circular(10),
                  image:DecorationImage(image: NetworkImage('https://picsum.photos/250?image=7'),
                  fit: BoxFit.cover),
                  ),
                  //child: ListTile(
                  //title: Text('read',selectionColor: Color.fromARGB(255, 0, 13, 189),),
                  ),
              ),
            ),
            //),
            ListTile(
              onTap: (){},
              subtitle:TextButton.icon(onPressed: (){}, label: Text('read',selectionColor: Colors.blue,)), 
              title: Text('In everyday life, people need to respond appropriately to many types of emotional stimuli.'),
               )
          ],
        ),
      );
  }
  //MESSAGE showing bottom sheet
  Future<void>showbottomsheet(BuildContext context)async{
    showBottomSheet(context: context, builder: (cxt){
      return Container(
        height: 460,
        width: double.infinity,
       decoration: BoxDecoration(
        color:Color.fromARGB(255, 209, 129, 255), 
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ListView(
          children: [
             Center(child: Icon(Icons.drag_handle)),
            ListTile(
              leading:IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.close)) ,
            ),
          ],
        ),
      );
    });

  }
  //showing articles sheet
   Future<void>showarticlessheet(BuildContext context)async{
    showBottomSheet(context: context, builder: (cxt){
      return Container(
        height: 460,
        width: double.infinity,
       decoration: BoxDecoration(
        color:Color.fromARGB(255, 209, 129, 255), 
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ListView(
          children: [
            const Center(child: Icon(Icons.drag_handle)),
            ListTile(
              leading:IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.close)) ,
            ),
          ],
        ),
      );
    });

  }
  //showing call sheet
  Future<void>showcallsheet(BuildContext context)async{
    showBottomSheet(context: context, builder: (cxt){
      return Container(
        height: 460,
        width: double.infinity,
       decoration: BoxDecoration(
        color:Color.fromARGB(255, 209, 129, 255), 
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ListView(
          children: [
            const Center(child: Icon(Icons.drag_handle)),
            ListTile(
              leading:IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.close)) ,
            ),
            
          ],
        ),
      );
    });

  }
}