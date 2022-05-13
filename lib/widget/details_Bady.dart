import 'package:flutter/material.dart';
import 'package:matger1_app/Product.dart';
import 'package:matger1_app/constants.dart';

class DetalisBady extends StatelessWidget {
  final Product product ;

   DetalisBady({this.product});
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Column(
      children: [

        Container(

          width: double.infinity,
            decoration: BoxDecoration(
              color:kBackgroundColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(50),
            bottomLeft: Radius.circular(50)
          )
            ),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: size.width -260,
                      backgroundColor: Colors.white,

                    ),
                    Positioned(child: Image.asset(product.image)),
                  ],
                ),
Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    Container(
        margin: EdgeInsets.only(top: 50,right: 30),
        child: Text(product.title,style: Theme.of(context).
        textTheme.headline6,)),
    Container(
        margin: EdgeInsets.only(
          bottom: 20,
          right: 30
           ),
             child: Text('السعر :\$${product.price}',style: TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
          color: kSecondaryColor,

    ),),
    ),
  ],
)
              ],
            ),

        ),
Container(
  margin: EdgeInsets.all(10),
  child: Text(product.description,
  textAlign: TextAlign.center,
  style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 20
  ),),
)      ],
    );
  }
}
