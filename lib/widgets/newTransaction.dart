import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  Function addTransaction;
  NewTransaction({required this.addTransaction});

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    String title = titleController.text;
    double amount = double.parse(amountController.text);
    if (title.isEmpty || amount < 0) {
      return;
    } else {
      widget.addTransaction(title, amount);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'title'),
                onSubmitted: (_)=>submitData(),

              ),
              TextField(
                controller: amountController,
                decoration: InputDecoration(labelText: 'amount'),
                onSubmitted: (_)=>submitData(),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.white)),
                  onPressed: () {
                   submitData;
                  },
                  child: Text(
                    'Add Transaction',
                    style: TextStyle(color: Colors.purple),
                  ))
            ],
          ),
        ));
  }
}
