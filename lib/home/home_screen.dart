import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../search/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(child: ListView(children:  [
        ListTile(
          title: const Text("Ferdous Hosen"),
          leading: const CircleAvatar(child: Image(image: AssetImage("asset/images/Fersous.jpg")),),
          subtitle: const Text("ferdaoushossan7788990@gmail.com"),
          trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.edit)),
        ),

        Divider(),
        SizedBox(height: 80,),

        const ListTile(
          title: Text("Home"),
          leading: Icon(Icons.home),
        ),
        const ListTile(
          title: Text("Course"),
          leading: Icon(Icons.play_circle),
        ),
        const ListTile(
          title: Text("Wishlist"),
          leading: Icon(Icons.favorite),
        ),
        const ListTile(
          title: Text("Contact Us"),
          leading: Icon(Icons.contact_mail),
        ),
        const ListTile(
          title: Text("Settings"),
          leading: Icon(Icons.settings),
        ),
        SizedBox(height: 170,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Column(
            children: [
              Icon(Icons.logout),
              Text("Log out")
            ],
          ),
          Column(
            children: [
              Icon(Icons.exit_to_app_rounded),
              Text("Exit")
            ],
          ),
        ],)

       ],),),
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,

        actions: [
          IconButton(onPressed: (){
            Get.to(const SearchScreen());
          }, icon: const Icon(Icons.search)),
          SizedBox(width: 50,),
          IconButton(onPressed: (){}, icon: const Icon(Icons.notification_add_outlined)),
          SizedBox(width: 50,),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: const [
        
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.blue,),label: "Home",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle_outlined,color: Colors.blue,),label: "Course",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.favorite,color: Colors.blue,),label: "Wishlist",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.blue,),label: "Profile",backgroundColor: Colors.black),

      ],),
      body: SingleChildScrollView(child: Padding(padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Live Course",style: TextStyle(fontSize: 21),),
                TextButton(onPressed: (){}, child: Text("See All")),
              ],
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,

                children: [
                  Container(
                    height: 100,
                    width: 300,
                    color: Colors.blue,


                    child: Center(child: Text("Flutter Course",style: TextStyle(color: Colors.white),)),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 100,
                    width: 300,
                    color: Colors.green,


                    child: Center(child: Text("Python Course",style: TextStyle(color: Colors.white),)),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 100,
                    width: 300,
                    color: Colors.blue,


                    child: Center(child: Text("Flutter Course",style: TextStyle(color: Colors.white),)),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 100,
                    width: 300,
                    color: Colors.green,


                    child: Center(child: Text("Python Course",style: TextStyle(color: Colors.white),)),
                  ),

                  SizedBox(width: 20,),
                  Container(
                    height: 100,
                    width: 300,
                    color: Colors.blue,


                    child: Center(child: Text("Flutter Course",style: TextStyle(color: Colors.white),)),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 100,
                    width: 300,
                    color: Colors.green,


                    child: Center(child: Text("Python Course",style: TextStyle(color: Colors.white),)),
                  ),



                ],
              ),
            )
          ],
        ),
      )
        ,),
      
    );
  }
}
