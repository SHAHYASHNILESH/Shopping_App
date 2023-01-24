import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({Key? key}) : super(key: key);

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 5, top: 15, bottom: 10),
          child: const Text(
            'Deal of the Day',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Image.network(
          'https://imgs.search.brave.com/-8K2z8a3fOk1Xn2z-9HX0P5gczbWRgq-avqIn6-tAUQ/rs:fit:759:422:1/g:ce/aHR0cHM6Ly9pbWFn/ZXMuaW5kaWFuZXhw/cmVzcy5jb20vMjAx/NS8wMy9mYXNoaW9u/LW1haW4uanBn',
          height: 250,
          fit: BoxFit.fitHeight,
        ),
        Container(
          padding: const EdgeInsets.only(left: 15),
          alignment: Alignment.topLeft,
          child: const Text(
            '\$100',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15, top: 7, right: 40),
          child: const Text(
            'Clothes and Makeup',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                'https://imgs.search.brave.com/VaF5p957wa89p2VpKqRBW8jtLh79o6gSCaSYuuf2fU8/rs:fit:1000:520:1/g:ce/aHR0cHM6Ly9jZG4w/MS52dWxjYW5wb3N0/LmNvbS93cC11cGxv/YWRzLzIwMTcvMDMv/aG9tZWdyb3duLW1h/a2V1cC1icmFuZHMt/RkkucG5n',
                fit: BoxFit.fitHeight,
                width: 200,
                height: 200,
              ),
              Image.network(
                'https://imgs.search.brave.com/VaF5p957wa89p2VpKqRBW8jtLh79o6gSCaSYuuf2fU8/rs:fit:1000:520:1/g:ce/aHR0cHM6Ly9jZG4w/MS52dWxjYW5wb3N0/LmNvbS93cC11cGxv/YWRzLzIwMTcvMDMv/aG9tZWdyb3duLW1h/a2V1cC1icmFuZHMt/RkkucG5n',
                fit: BoxFit.fitHeight,
                width: 200,
                height: 200,
              ),
              Image.network(
                'https://imgs.search.brave.com/VaF5p957wa89p2VpKqRBW8jtLh79o6gSCaSYuuf2fU8/rs:fit:1000:520:1/g:ce/aHR0cHM6Ly9jZG4w/MS52dWxjYW5wb3N0/LmNvbS93cC11cGxv/YWRzLzIwMTcvMDMv/aG9tZWdyb3duLW1h/a2V1cC1icmFuZHMt/RkkucG5n',
                fit: BoxFit.fitHeight,
                width: 200,
                height: 200,
              ),
              Image.network(
                'https://imgs.search.brave.com/VaF5p957wa89p2VpKqRBW8jtLh79o6gSCaSYuuf2fU8/rs:fit:1000:520:1/g:ce/aHR0cHM6Ly9jZG4w/MS52dWxjYW5wb3N0/LmNvbS93cC11cGxv/YWRzLzIwMTcvMDMv/aG9tZWdyb3duLW1h/a2V1cC1icmFuZHMt/RkkucG5n',
                fit: BoxFit.fitHeight,
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
        Container(
            padding: const EdgeInsets.only(
              left: 10,
              top: 15,
              bottom: 15,
            ),
            alignment: Alignment.topLeft,
            child: Text(
              'See All Deals',
              style: TextStyle(color: Colors.cyan[800]),
            ))
      ],
    );
  }
}
