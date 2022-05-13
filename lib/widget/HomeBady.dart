
import 'package:flutter/material.dart';
import 'package:matger1_app/Product.dart';
import 'package:matger1_app/constants.dart';
import 'package:matger1_app/screen/detels_screen.dart';
import 'package:matger1_app/widget/prodact_cart.dart';

class HomeBady extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[700],
        body:Column(children: [
          SizedBox(
            height: kDefaultPadding /2,
          ),
          Expanded(

              child: Stack(
                children: [
                  Container(
                   margin: EdgeInsets.only(top: 70),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                        topLeft: Radius.circular(50))
                    ),
                  ),
                  ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context,index){
                    return ProdacCard(
                        itemIndex:index,
                        product: products[index],
                      press: (){
                          Navigator.of(context).push(MaterialPageRoute
    (builder: (context) =>  DetailsScreen(
    product: products[index],
    )));
                          }

                    );

                  })
                ],
              ))
        ],)
    );
  }
}

