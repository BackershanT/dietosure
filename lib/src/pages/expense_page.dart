import 'package:avatar_view/avatar_view.dart';
import 'package:dietosure/src/app_colors/colors.dart';
import 'package:dietosure/src/pages/transaction_page.dart';
import 'package:dietosure/src/widgets/transaction_card.dart';
import 'package:flutter/material.dart';



class ExpensePage extends StatefulWidget {
  const ExpensePage({Key? key, }) : super(key: key);

  @override
  State<ExpensePage> createState() => _ExpensePageState();
}
String title='';
String details='';
String amounts='';
class _ExpensePageState extends State<ExpensePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppTheme.colors.home,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                elevation: 5,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppTheme.colors.whites,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.sort,
                                color: AppTheme.colors.blue,
                              ),
                              Icon(
                                Icons.more_vert,
                                color: AppTheme.colors.blue,
                              )
                            ]),
                      ),
                      const AvatarView(
                        radius: 50,
                        borderColor: Colors.yellow,
                        avatarType: AvatarType.CIRCLE,
                        backgroundColor: Colors.red,
                        imagePath:
                            "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg",
                        placeHolder: Icon(
                          Icons.person,
                          size: 40,
                        ),
                        errorWidget: Icon(
                          Icons.error,
                          size: 40,
                        ),
                      ),
                      Text(
                        "Hira Riaz",
                        style: TextStyle(
                            color: AppTheme.colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      Text(
                        "UX/UI Designer",
                        style: TextStyle(
                            color: AppTheme.colors.black, fontSize: 12),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [Text('\$8900',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: AppTheme.colors.blue),), const Text('Income')],
                          ),
                          const VerticalDivider(
                            width: 2,
                            thickness: 1,
                            indent: 10,
                            endIndent: 1,
                            color: Colors.black,
                          ),
                          Column(
                            children: [Text('\$5500',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: AppTheme.colors.blue),), const Text('Expenses')],
                          ),
                          Divider(
                            color: AppTheme.colors.black,
                            thickness: 1,
                            height: 5,
                          ),
                          Column(
                            children: [Text('\$890',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: AppTheme.colors.blue),), const Text('Loan')],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Overview",
                        style: TextStyle(
                            fontSize: 24,
                            color: AppTheme.colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.notifications_outlined)
                    ],
                  ),
                  Text(
                        "sept 13,2020",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppTheme.colors.blue,
                    ),
                  )
                ],
              ),
            ),

            TransactionCard(
                onPressed: () {
                  setState(() {
                    title='Sent';
                    details='Sending Money to Clients';
                    amounts='\$150';
                  });
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TransactionPage(title: title, details:details , amounts: amounts, )));
                },
                title: 'Sent',
                details: 'Sending Money to Clients',
                amounts: '\$150',
                Icones: const Icon(Icons.arrow_upward)),
            TransactionCard(
                onPressed: () {
                  setState(() {
                    title='Recieve';
                    details='Recieving salary from Copmany';
                    amounts='\$250';
                  });
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TransactionPage(title: title, details:details , amounts: amounts, )));
                },
                title:'Recieve',
                details: 'Recieving salary from Copmany',
                amounts: '\$250',
                Icones: const Icon(Icons.arrow_downward)),

            TransactionCard(
                onPressed: () {
                  setState(() {
                    title='Loan';
                    details='Loan for the Car';
                    amounts='\$400';
                  });
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TransactionPage(title: title, details:details , amounts: amounts, )));
                },
                title: 'Loan',
                details: 'Loan for the Car',
                amounts: '\$400',
                Icones: const Icon(Icons.currency_exchange_rounded)),


          ],
        ),
      ),
    );
  }
}
