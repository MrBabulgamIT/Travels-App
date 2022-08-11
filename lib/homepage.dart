import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/extra_data/my_button.dart';
import 'package:wallet_app/extra_data/mycards.dart';
import 'package:wallet_app/extra_data/payment.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.pink,
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.pink,
                  blurRadius: 20,
                  spreadRadius: 10,
                )
              ]),
              child: Icon(
                Icons.monetization_on,
                size: 32,
              ),
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey[300],
          child: Padding(
            padding: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                  color: Colors.pink[300],
                  iconSize: 32,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings),
                  color: Colors.pink[300],
                  iconSize: 32,
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'My',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Cards',
                          style: TextStyle(fontSize: 28),
                        ),
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[300],
                        ),
                        child: Icon(
                          Icons.add,
                          size: 25,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  child: Container(
                    height: 200,
                    child: Row(
                      children: [
                        MyCardsData(
                            cardnumber: '*****87343434',
                            durationTime: '11/2024',
                            taka: '3,43,432'),
                        SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        MyCardsData(
                            cardnumber: '***90229191',
                            durationTime: '03/2023',
                            taka: '3,82,233'),
                        SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        MyCardsData(
                            cardnumber: '***94755094',
                            durationTime: '07/2024',
                            taka: '5,83,323'),
                        SizedBox(
                          width: 10,
                          height: 20,
                        ),
                        MyCardsData(
                            cardnumber: '***74755094',
                            durationTime: '01/2024',
                            taka: '15,30,351'),
                        SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        MyCardsData(
                            cardnumber: '***90229191',
                            durationTime: '03/2023',
                            taka: '3,82,233'),
                        SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        MyCardsData(
                            cardnumber: '***28246399',
                            durationTime: '03/2027',
                            taka: '4,87,256'),
                        SizedBox(
                          width: 10,
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 6,
                effect: ExpandingDotsEffect(),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButtonData(
                        imagepath: 'photos/sent.png', textName: 'Sent'),
                    MyButtonData(
                        imagepath: 'photos/debit-card.png', textName: 'Pay'),
                    MyButtonData(
                        imagepath: 'photos/bill.png', textName: 'Bills'),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    PaymentDemo(
                        descriptionName: 'Statistics',
                        mainImage: "photos/analysis.png",
                        tittleName: 'Payment and Income'),
                    SizedBox(
                      height: 10,
                    ),
                    PaymentDemo(
                        descriptionName: 'Transaction',
                        mainImage: "photos/transaction.png",
                        tittleName: 'Transaction and Histort'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
