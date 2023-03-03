import 'package:dietosure/src/app_colors/colors.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final Function() onPressed;
  final String title;
  final String details;
  final String amounts;
  final Icon Icones;

  const TransactionCard({Key? key, required this.onPressed, required this.title, required this.details, required this.amounts,  required this.Icones}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20,2,20,2),
      child: InkWell(
        onTap: (){
          onPressed();
        },
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          elevation: 5,
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppTheme.colors.whites,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: AppTheme.colors.symbolbox,
                                borderRadius: BorderRadius.circular(15)),
                            child: Icones,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(title,textAlign:TextAlign.start,style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),),
                            ],
                          ),
                            Row(
                              children: [
                                Text(details,style: TextStyle(
                                  color: AppTheme.colors.text
                                ),),
                              ],
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [Text(amounts,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),)],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
}
