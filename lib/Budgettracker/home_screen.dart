import 'package:flutter/material.dart';
import 'list.dart';

class ExpenseList extends StatefulWidget {
  @override
  _ExpenseListState createState() => _ExpenseListState();
}

late TextEditingController controller;
@override
class _ExpenseListState extends State<ExpenseList> {
  void initState () {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose () {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
  return  Scaffold(
  appBar: AppBar(
  elevation: 0,

  backgroundColor: Colors.deepPurple[900],
  title: Text('Budget Tracker',
  style: TextStyle(
    fontFamily: 'jost'
  ),),
  foregroundColor: Colors.white,
  ),
  body:Container(
  color: Colors.purple.withAlpha(20),
  child :Row(
  children:<Widget> [
  Expanded(
  child:Column(

  children: <Widget>[
  Container(
  padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
  child: Icon(
  color: Colors.indigo.shade400,
  Icons.account_circle_sharp,
  size: 150,
  ),),
  Container(
  padding: EdgeInsets.zero,
  margin: EdgeInsets.all(0),
  child :Text(
  'Welcome Back !',
  style: TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.w300,
  color: Colors.brown.shade500,
  fontFamily: 'jost',
  ),
  )),
  SizedBox(height: 10,),
  SizedBox(

  child: Row(

  children: [Expanded(
    flex: 6,
    child: Container(
      color: Colors.brown,
      child: SizedBox(
      height:50, width: 150,
      child:    Text('Total :   48500'
      ,textAlign: TextAlign.center,
        style: TextStyle(
      color: Colors.white70,
      backgroundColor: Colors.brown,
      fontFamily: 'jost',
      fontSize: 25,
      letterSpacing: 1.0
      ),),),
    ),
  ),
  Expanded(
    flex: 1,
    child: Container(
     color: Colors.brown,
      child: IconButton(
      color:  Colors.white,
      onPressed: () {
        Navigator.pushNamed(context, '/list');
      },
      icon: Icon(Icons.keyboard_double_arrow_down_outlined,
      color: Colors.white,
      textDirection: TextDirection.ltr,),
      tooltip: 'list of expenses',),
    ),
  )

  ],
  ),





  ),

  ])


  ,
  )
  ]
  ) ),
      floatingActionButton: FloatingActionButton(onPressed: () {showDialog<String>(context: context, builder: (context) =>AlertDialog(
    backgroundColor: Colors.indigo[400],

    title: Text('New Category',
      style: TextStyle(
          letterSpacing: 1.0,
          fontFamily: 'jost',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white),
    ),
    actionsOverflowButtonSpacing: 20,
    content: Column(
      children: [
        Column(
          children: [
            Text('Name of the Category',
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'jost',
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),),
            TextField(
              autofocus: true,
              style: TextStyle(fontFamily: 'jost',
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
              decoration: InputDecoration(hintText: 'Enter Category Name'),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Column(
          children: [
            Text('Value of the Category',
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'jost',
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),),
            TextField(
              autofocus: true,
              controller: controller,
              style: TextStyle(fontFamily: 'jost',
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
              decoration: InputDecoration(hintText: 'Enter Category Value'),
            ),
          ],
        ),
      ],
    ),
    actions: [
      TextButton(onPressed: () {Navigator.of(context).pop(controller.text);}, child: Text(
        'Add Category',
        style: TextStyle(fontFamily: 'jost',
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white),
      ))
    ],
  ));



  } ,
      child: Icon(Icons.add,
      color : Colors.white),
        backgroundColor: Colors.indigo[400],

      ),
  );}}