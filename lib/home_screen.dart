import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text('WhatApp'),
            bottom: const TabBar(
                tabs: [
                  Tab(
                    child: Icon(Icons.camera_alt) ,
                  ),
                  Tab(
                    child: Text('Chats'),
                  ),
                  Tab(
                    child: Text('Status'),
                  ),
                  Tab(
                    child: Text('Calls'),
                  ),


                ]),

            actions:  [
              Icon(Icons.search),
              SizedBox(width: 10,),
              PopupMenuButton(
                icon:  Icon(Icons.more_vert_outlined) ,
                  itemBuilder: (context,)=> const[
                    PopupMenuItem(
                        value:'1',
                       child: Text('New Group')),

                    PopupMenuItem(
                        value:'2',
                        child: Text('Setting')),

                    PopupMenuItem(
                        value:'3',
                        child: Text('Logout'))



                  ]),
              SizedBox(width: 10,),
            ],
      ),


          body:  TabBarView (
              children: [
                Text('Camera'),
                ListView.builder (
                  itemCount: 100,
                    itemBuilder: (context,index)
                {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/12966795/pexels-photo-12966795.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      
                    ),
                    title: Text('Bruce Wayne'),
                    subtitle: Text("I'm Batman!"),
                    trailing: Text('2:24PM'),
                  );

                }
                ),


                ListView.builder (
                    itemCount: 100,
                    itemBuilder: (context,index)
                    {
                      return  ListTile(

                        leading: Container(
                          decoration: BoxDecoration(
                            shape:BoxShape.circle,
                            border: Border.all(

                              color: Colors.green,
                              width: 4,
                            )
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://snworksceo.imgix.net/cav/f177b95f-71b5-44f3-bea3-28c768c4349a.sized-1000x1000.png?w=1000'),

                          ),
                        ),
                        title: Text(' SpiderMan'),
                        subtitle:Text('Today, 11:27 PM'),

                      );

                    }
                ),

                ListView.builder (
                    itemCount: 100,
                    itemBuilder: (context,index)
                    {
                      return const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://m.media-amazon.com/images/M/MV5BMDExZGMyOTMtMDgyYi00NGIwLWJhMTEtOTdkZGFjNmZiMTEwXkEyXkFqcGdeQXVyMjM4NTM5NDY@._V1_.jpg'),

                        ),
                        title: Text('John Wick'),
                        subtitle:Text('you missed a call'),
                        trailing: Icon(Icons.phone),
                      );

                    }
                ),
              ]
          ) ,
    )
    );
  }
}
