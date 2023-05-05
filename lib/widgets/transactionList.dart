import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList({required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: ListView.builder(
            itemCount: transactions.length,
            itemBuilder: (ctx, index) => Column(
                  children: [
                    Card(
                      elevation: 5,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.purple,
                              ),
                            ),
                            child: Text(('\$ ${(transactions[index].amount).toStringAsFixed(2)}'),
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                transactions[index].title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                (DateFormat('MMM d, y').format(transactions[index].date)),
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )));
  }
}
