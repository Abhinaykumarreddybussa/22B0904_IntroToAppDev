import 'Budgettracker/home_screen.dart';
import 'Budgettracker/list.dart';
import 'package:flutter/material.dart';


void main() =>
    runApp(
        MaterialApp(
          initialRoute: '/home_screen',
          routes: {
            '/list' :  (context) => list(),
            '/home_screen' : (context) =>  ExpenseList()
          },

        ));



