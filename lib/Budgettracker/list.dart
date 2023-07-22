
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'categories.dart';

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  List<category> categories=[

    category(type: 'Groceries',value: -500),
    category(type: 'Bills',value: -1000),
    category(type: 'Salary',value: 50000 )
  ];
  late TextEditingController controller;

  @override
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
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.deepPurple[900],
        title: Text('Total : 48500'
        ,style: TextStyle(
            fontFamily: 'jost'
          ),),
        foregroundColor: Colors.white,
      ),
      body:
         ListView.builder(
             itemCount: categories.length,
             itemBuilder: (context,index){
               return Card(
                 child: ListTile(


                   onTap: () {},
                   title: Text(
                     categories[index].type,
                      style: TextStyle(
                        fontFamily: 'jost',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                      ),  ),
                   subtitle: Text('${categories[index].value}',
                     style: TextStyle(
                         fontFamily: 'jost',
                         fontSize: 18,
                         fontWeight: FontWeight.w400,
                         color: Colors.white
                     ),),
                   trailing: IconButton(
                     icon: Icon(Icons.delete,
                     color: Colors.white,),
                     onPressed: () {
                       setState(() {
                         categories.remove(categories[index]);
                       });
                     },
                   ),
                   tileColor: Colors.brown,
                   selected: false,
                 )
               )
             ;},),
        floatingActionButton: FloatingActionButton(
          onPressed: ()  {
            showDialog<String>(context: context, builder: (context) =>AlertDialog(
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
         )




    );

  }
}






