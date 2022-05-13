import 'package:flutter/material.dart';
import 'package:matger1_app/Product.dart';
import 'package:matger1_app/constants.dart';
import 'package:matger1_app/widget/details_Bady.dart';
class DetailsScreen extends StatelessWidget {
  final Product product ;

  const DetailsScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color:kPrimaryColor ,),
        ),
        title: Text('رجوع',style: Theme.of(context).textTheme.bodyText2,),
      ),
      body: DetalisBady(
        product:product,
      ),
    );
  }
}
