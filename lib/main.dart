import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:weekly_expanses/widgets/newTransaction.dart';
import 'package:weekly_expanses/widgets/transactionList.dart';
import 'package:weekly_expanses/widgets/user_transaction.dart';
import 'models/transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: App(),
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Calculator'),
        actions: [IconButton(onPressed: null, icon: Icon(Icons.add))],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                elevation: 5,
                color: Colors.blue,
                child: Text(
                  'CHARTX',
                ),
              ),
            ),
            UserTransaction(),
            
          
            
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: null,child: Icon(Icons.add),),
      
    );
  }
}
