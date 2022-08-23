import 'package:ecommerce/Screen/ProductScreen.dart';
import 'package:ecommerce/model/Accessories.dart';
import 'package:ecommerce/model/productlist.dart';
import 'package:ecommerce/widget/CusFontStyle.dart';
import 'package:ecommerce/widget/CustomColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  final productlist = product.generatedproductlist();
  final Accessorieslist = Accessories.generatedaccessorieslist();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Container(
        child: Scaffold(
          backgroundColor: bgclr,
          body: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //App Bar Icons
                  Padding(
                    padding: const EdgeInsets.only(right: 2, top: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: scbgclr,
                              borderRadius: BorderRadius.circular(16)),
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: blackfclr,
                          ),
                        ),
                        Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: priclr,
                                  blurRadius: 1,
                                  spreadRadius: 1,
                                  blurStyle: BlurStyle.normal,
                                ),
                              ],
                              color: bgclr,
                              borderRadius: BorderRadius.circular(16)),
                          child: Icon(
                            Icons.search,
                            color: blackfclr,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 56),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi-Fi Shop & Service",
                          style:
                              myStyle(32, blackfclr, FontWeight.w800, 1, 1, 3),
                        ),
                        Text(
                          "Audio shop on Rustavali Ave 57,",
                          style: myStyle(14, priclr, FontWeight.w600, 1, 1, 2),
                        ),
                        Text(
                          "This shop offers both products & services",
                          style: myStyle(14, priclr, FontWeight.w600, 1, 1, 2),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 32),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Products",
                              style: myStyle(26, blackfclr, FontWeight.w700),
                            ),
                            Text(
                              "Show all",
                              style: myStyle(12, secclr, FontWeight.w700),
                            ),
                          ],
                        ),
                        Container(
                          height: 220,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              separatorBuilder: (context, index) => SizedBox(
                                    width: 10,
                                  ),
                              itemCount: widget.productlist.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProductScreen()));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(color: bgclr),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(bottom: 16),
                                          height: 120,
                                          width: 180,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      "${widget.productlist[index].img}")),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              color: scbgclr),
                                        ),
                                        Text(
                                          "${widget.productlist[index].name}",
                                          style: myStyle(16, blackfclr,
                                              FontWeight.w900, 1),
                                        ),
                                        Text(
                                          "${widget.productlist[index].category}",
                                          style: myStyle(14, blackfclr,
                                              FontWeight.w900, 1),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "\$ ${widget.productlist[index].price}",
                                          style: myStyle(
                                              16, priclr, FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Accesories",
                              style: myStyle(26, blackfclr, FontWeight.w700),
                            ),
                            Text(
                              "Show all",
                              style: myStyle(12, secclr, FontWeight.w700),
                            ),
                          ],
                        ),
                        Container(
                          height: 220,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              separatorBuilder: (context, index) => SizedBox(
                                    width: 10,
                                  ),
                              itemCount: widget.productlist.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: BoxDecoration(color: bgclr),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 16),
                                        height: 120,
                                        width: 180,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    "${widget.Accessorieslist[index].img}")),
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            color: scbgclr),
                                      ),
                                      Text(
                                        "${widget.Accessorieslist[index].name}",
                                        style: myStyle(
                                            16, blackfclr, FontWeight.w900, 1),
                                      ),
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 5,
                                            backgroundColor: Colors.green,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 8),
                                            child: Text(
                                              "${widget.Accessorieslist[index].Status}",
                                              style: myStyle(14, blackfclr,
                                                  FontWeight.w900, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "\$ ${widget.Accessorieslist[index].price}",
                                        style: myStyle(
                                            16, priclr, FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
