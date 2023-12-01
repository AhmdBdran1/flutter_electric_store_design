import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/widgets/details/details_body.dart';

import '../models/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar:detailsAppBar(context),
      body: DetailsBody(product: product),

    );
  }
}


AppBar detailsAppBar(BuildContext context){
  return  AppBar(
    elevation: 0,
    backgroundColor: kBackgroundColor,
    leading: IconButton(
      padding: EdgeInsets.only(right: kDefaultPadding),
      icon: Icon(Icons.arrow_back,
        color: kPrimaryColor,),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    title: Text('رجوع',
      style: Theme.of(context).textTheme.bodyText2,),
  );

}
