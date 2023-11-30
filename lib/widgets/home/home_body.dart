import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/widgets/details/detals_screen.dart';
import 'package:store_app/widgets/home/product_card.dart';
import 'package:store_app/models/product.dart';

import '../../models/product.dart';
import '../../screens/details_screen.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
        child: Column(
          children: [
            SizedBox(height: kDefaultPadding/2,),
            Expanded(
              child:Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                    ),

                    margin: EdgeInsets.only(top: 70),
                  ),

                  ListView.builder(
                    itemCount:Product.products.length,
                      itemBuilder: (context,index)=>ProductCard(
                        itemIndex: index,
                        product: Product.products[index],
                        press: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen()));
                          },
                      ),
                  ),
                ],
              ),
            ),

          ],
        ),
    );
  }
}

