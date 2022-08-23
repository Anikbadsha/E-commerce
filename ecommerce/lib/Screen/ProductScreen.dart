import 'package:ecommerce/model/Accessories.dart';
import 'package:ecommerce/model/productlist.dart';
import 'package:ecommerce/widget/CusFontStyle.dart';
import 'package:ecommerce/widget/CustomColor.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  List<product> productinfo = product.generatedproductlist();

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgclr,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                      color: scbgclr,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40))),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        "asset/products/image-1.png",
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                          top: 32,
                          left: 16,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: bgclr),
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios_new,
                                color: priclr,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ))
                    ],
                  ),
                )),
            Expanded(
              flex: 6,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
                child: Container(
                  color: bgclr,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.shopping_cart,
                            color: secclr,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Shopping",
                            style: myStyle(16, secclr, FontWeight.w700),
                          ),
                        ],
                      ),
                      Text(
                        "AKJ NM3042 L12V",
                        style: myStyle(32, blackfclr, FontWeight.w800, 1, 1, 3),
                      ),
                      Text(
                        "Hi-Fi shop & Rustavali Ave 57,",
                        style: myStyle(14, priclr, FontWeight.w600, 1, 1, 2),
                      ),
                      Text(
                        "This shop offers both products & services",
                        style: myStyle(14, priclr, FontWeight.w600, 1, 1, 2),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: scbgclr),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.location_pin,
                                        color: secclr,
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Rustavali Ave 57,",
                                        style: myStyle(14, priclr,
                                            FontWeight.w600, 1, 1, 2),
                                      ),
                                      Text(
                                        "17-001,Butami",
                                        style: myStyle(14, priclr,
                                            FontWeight.w600, 1, 1, 2),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: blackfclr,
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18, bottom: 10),
                        child: Container(
                          height: 2,
                          color: scbgclr,
                          padding: EdgeInsets.only(left: 16, right: 16),
                        ),
                      ),
                      Text(
                        "\$ 199.00",
                        style: myStyle(26, blackfclr, FontWeight.w700),
                      ),
                      Text(
                        "Tax rate 2%-\$4.00(-\$195.00)",
                        style: myStyle(14, priclr, FontWeight.w600, 1, 1, 2),
                      ),
                      Container(
                        height: 56,
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 16),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: secclr,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16))),
                          onPressed: () {},
                          child: Text(
                            "ADD TO CART",
                            style: myStyle(12, bgclr, FontWeight.w600, 1, 1, 2),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
