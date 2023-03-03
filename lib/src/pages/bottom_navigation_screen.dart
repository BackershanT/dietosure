import 'package:dietosure/src/app_colors/colors.dart';
import 'package:dietosure/src/pages/currency_page.dart';
import 'package:dietosure/src/pages/expense_page.dart';
import 'package:dietosure/src/pages/home_page.dart';
import 'package:dietosure/src/pages/payment_page.dart';
import 'package:dietosure/src/pages/profile_page.dart';
import 'package:flutter/material.dart';

class BottomnavigationPage extends StatefulWidget {
  const BottomnavigationPage({Key? key}) : super(key: key);

  @override
  State<BottomnavigationPage> createState() => _BottomnavigationPageState();
}
int _selectedIndex = 2;

class _BottomnavigationPageState extends State<BottomnavigationPage> {


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final screens = [
    const HomePage(),
    const PaymentPage(),
    const ExpensePage(),
    const CurrencyPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
        backgroundColor:AppTheme.colors.white,

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppTheme.colors.whites,
        items:  const [
           BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_outlined),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: "Payments",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Expense",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_bitcoin_outlined),
            label: "Currency",

          ),BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Profile",

          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppTheme.colors.blue,
        unselectedItemColor: AppTheme.colors.text,
        elevation: 1,
        onTap: _onItemTapped,
      ),
      body: screens[_selectedIndex],
    ));
  }
}
