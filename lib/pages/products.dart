import 'package:flutter/material.dart';

class AllProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 295,
      child: ListView(
        children: [
          Products("Microwave Oven",
              Image.asset('assets/microwave.PNG', scale: 1.2)),
          Products("Whisk", Image.asset('assets/whisk.PNG', scale: 1.2)),
          Products("Speakers", Image.asset('assets/speakers.PNG', scale: 1.2)),
          Products("Air Conditioner",
              Image.asset('assets/air_conditioner.PNG', scale: 1.2)),
          Products(
              "Television", Image.asset('assets/television.PNG', scale: 1.2)),
        ],
      ),
    );
  }
}

class Products extends StatelessWidget {
  final texto;
  final img;
  Products(this.texto, this.img);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [this.img],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                this.texto,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    "4.6",
                    style: TextStyle(fontSize: 11),
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.more_vert,
                size: 35,
                color: Colors.blue,
              ),
            ],
          )
        ],
      ),
    );
  }
}
