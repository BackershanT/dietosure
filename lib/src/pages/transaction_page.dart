import 'package:dietosure/src/app_colors/colors.dart';
import 'package:dietosure/src/widgets/button/login.dart';
import 'package:dietosure/src/widgets/transaction_card.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  final String title;
  final String details;
  final String amounts;
  const TransactionPage({
    Key? key,
    required this.title,
    required this.details,
    required this.amounts,
  }) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppTheme.colors.home,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new)),
                const Icon(Icons.search)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Transactions",
                  style: TextStyle(
                      color: AppTheme.colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: AppTheme.colors.text),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(width: 70, height: 40,
                    decoration: BoxDecoration(
                        color: AppTheme.colors.blue,
                      borderRadius:BorderRadius.circular(30),

                    ),
                child: Center(child: Text("All",style: TextStyle(color: AppTheme.colors.whites),)),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(width: 70, height: 40,
                  decoration: BoxDecoration(
                    color: AppTheme.colors.whites,
                    borderRadius:BorderRadius.circular(30),

                  ),
                  child: Center(child: Text("Income",style: TextStyle(color: AppTheme.colors.black),)),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(width: 70, height: 40,
                  decoration: BoxDecoration(
                    color: AppTheme.colors.whites,
                    borderRadius:BorderRadius.circular(30),

                  ),
                  child: Center(child: Text("Expense",style: TextStyle(color: AppTheme.colors.black),)),),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text(
                  "Today",
                  style: TextStyle(
                      color: AppTheme.colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          TransactionCard(
              onPressed: () {},
              title: widget.title,
              details: widget.details,
              amounts: widget.amounts,
              Icones: const Icon(Icons.mark_as_unread_outlined)),
          Image.asset(
            "assets/back.png",
            height: 350,
            width: MediaQuery.of(context).size.width,
          ),
          LoginButton(onPressed: () {}, title: 'See Details')
        ],
      ),
    ));
  }
}
