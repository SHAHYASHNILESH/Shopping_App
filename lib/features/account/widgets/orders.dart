import 'package:flutter/material.dart';
import 'package:shopping_app/constants/global_variables.dart';
import 'package:shopping_app/features/account/widgets/single_product.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List list = [
    'https://imgs.search.brave.com/KM7quhM52jsvQ9GvPdtuZyxSk-fLWyE6byPpssYYjcY/rs:fit:1200:630:1/g:ce/aHR0cDovL3d3dy5h/cHBzbWl6ZS5jb20v/d3AtY29udGVudC91/cGxvYWRzLzIwMjAv/MDYvMTU5MzM4Mjgy/NF8xMjAweDYzMHdh/LnBuZw',
    'https://imgs.search.brave.com/KM7quhM52jsvQ9GvPdtuZyxSk-fLWyE6byPpssYYjcY/rs:fit:1200:630:1/g:ce/aHR0cDovL3d3dy5h/cHBzbWl6ZS5jb20v/d3AtY29udGVudC91/cGxvYWRzLzIwMjAv/MDYvMTU5MzM4Mjgy/NF8xMjAweDYzMHdh/LnBuZw',
    'https://imgs.search.brave.com/KM7quhM52jsvQ9GvPdtuZyxSk-fLWyE6byPpssYYjcY/rs:fit:1200:630:1/g:ce/aHR0cDovL3d3dy5h/cHBzbWl6ZS5jb20v/d3AtY29udGVudC91/cGxvYWRzLzIwMjAv/MDYvMTU5MzM4Mjgy/NF8xMjAweDYzMHdh/LnBuZw',
    'https://imgs.search.brave.com/KM7quhM52jsvQ9GvPdtuZyxSk-fLWyE6byPpssYYjcY/rs:fit:1200:630:1/g:ce/aHR0cDovL3d3dy5h/cHBzbWl6ZS5jb20v/d3AtY29udGVudC91/cGxvYWRzLzIwMjAv/MDYvMTU5MzM4Mjgy/NF8xMjAweDYzMHdh/LnBuZw',
    'https://imgs.search.brave.com/KM7quhM52jsvQ9GvPdtuZyxSk-fLWyE6byPpssYYjcY/rs:fit:1200:630:1/g:ce/aHR0cDovL3d3dy5h/cHBzbWl6ZS5jb20v/d3AtY29udGVudC91/cGxvYWRzLzIwMjAv/MDYvMTU5MzM4Mjgy/NF8xMjAweDYzMHdh/LnBuZw',
    'https://imgs.search.brave.com/KM7quhM52jsvQ9GvPdtuZyxSk-fLWyE6byPpssYYjcY/rs:fit:1200:630:1/g:ce/aHR0cDovL3d3dy5h/cHBzbWl6ZS5jb20v/d3AtY29udGVudC91/cGxvYWRzLzIwMjAv/MDYvMTU5MzM4Mjgy/NF8xMjAweDYzMHdh/LnBuZw',
    'https://imgs.search.brave.com/KM7quhM52jsvQ9GvPdtuZyxSk-fLWyE6byPpssYYjcY/rs:fit:1200:630:1/g:ce/aHR0cDovL3d3dy5h/cHBzbWl6ZS5jb20v/d3AtY29udGVudC91/cGxvYWRzLzIwMjAv/MDYvMTU5MzM4Mjgy/NF8xMjAweDYzMHdh/LnBuZw',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                'Your Orders',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 8,
              ),
              child: Text(
                'See All',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: GlobalVariables.selectedNavBarColor,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 170,
          padding: EdgeInsets.only(
            left: 10,
            right: 0,
            top: 20,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount:list.length,
            itemBuilder: (context, index) {
              return SingleProduct(image: list[index],);
            },
          ),
        ),
      ],
    );
  }
}
