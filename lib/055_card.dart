import 'package:flutter/material.dart';

void main() 
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: id_card(),
    );
  }
}

class id_card extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text
        (
          'Digital ID Card',
          style: TextStyle
          (
            fontWeight:FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      

      body: Center
      (
        child: Card
        (
            shape: RoundedRectangleBorder
            (
              borderRadius: BorderRadius.circular(15),
            ),
          color: Colors.white,

        child: Container
        (
          width: 500,
          height: 450,
        
          child: Column
          (
            children: 
            [
              SizedBox(height:25),
              Container(
                padding: EdgeInsets.all(4),
                decoration:BoxDecoration
                (
                  color:Colors.black12,
                  shape: BoxShape.circle,
                ),

                child:CircleAvatar
                (
                  radius: 50,
                  backgroundImage: NetworkImage('https://i.postimg.cc/bN5Gb2bS/nipa.jpg',
                  ),
              ),
              ),
              SizedBox(height: 20),
          
              Text
              (
                'Nipa Das',
                style: TextStyle(fontSize:25, fontWeight: FontWeight.bold ),
              ),
              Text
              (
                'Batch:61th, Section: B\n  Department of CSE',
                style: TextStyle(fontSize:20, fontWeight: FontWeight.normal ),
              ),
              Divider(),
              ListTile
              (
                leading: Icon(Icons.badge,color:Colors.black),
                title: Text('ID:0182310012101055'),
              ),
              ListTile
              (
                leading: Icon(Icons.email,color:Colors.black),
                title: Text('Email:nipadas2003@gmail.com'),
              ),
              ListTile
              (
                leading: Icon(Icons.phone,color:Colors.black),
                title: Text('Phone: 01727262444'),
              ),
            ],
            ),
          ),
        ),
        ),
      );
  }
}