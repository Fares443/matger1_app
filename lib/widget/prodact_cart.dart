import 'package:flutter/material.dart';
import 'package:matger1_app/Product.dart';
import 'package:matger1_app/constants.dart';

class ProdacCard extends StatelessWidget {
  final Product product ;
  final int itemIndex;
  final Function press;
  ProdacCard({this.product, this.itemIndex, this.press,}) ;

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal:kDefaultPadding,
        vertical: kDefaultPadding/2,
      ),
      height: 190,
      child: InkWell(
        onTap: press,
        splashColor: Colors.black,

        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(color:Colors.black12,
                      offset: Offset(0,15),
                      blurRadius: 25,
                    spreadRadius: 30)
                  ]
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding
                ),
                height: 160,
                width: 200,
                child: Image.asset(product.image,
                  fit: BoxFit.fill,),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                  width: size.width-200,
                  height: 136,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                        ),
                        child: Text(product.title,
                          style: Theme.of(context).textTheme.bodyText1,),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                        ),
                        child: Text(product.subTitle,
                          style: Theme.of(context).
                          textTheme.caption,),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10,
                          vertical: 10,),
                        padding: EdgeInsets.symmetric(horizontal: 40,
                          vertical: 2,),

                        decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(22)
                        ),
                        child: Text('السعر :\$${product.price}',style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                      Spacer(),


                    ],)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
