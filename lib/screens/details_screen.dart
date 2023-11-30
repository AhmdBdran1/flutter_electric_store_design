import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar:detailsAppBar(context),

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
