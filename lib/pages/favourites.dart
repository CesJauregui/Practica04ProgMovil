import 'package:flutter/material.dart';

class Favourites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(top: 50),
      color: Colors.grey[200],
      height: 190,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CardFavourites(
              "Washer Machine", Image.asset('assets/refri.PNG', scale: 4)),
          CardFavourites(
              "Dryer Machine", Image.asset('assets/dryer.PNG', scale: 2)),
          CardFavourites(
              "Machine 3", Image.asset('assets/refri.PNG', scale: 4)),
          CardFavourites(
              "Machine 4", Image.asset('assets/refri.PNG', scale: 4)),
          CardFavourites(
              "Machine 5", Image.asset('assets/refri.PNG', scale: 4)),
        ],
      ),
    );
  }
}

class CardFavourites extends StatelessWidget {
  final texto;
  final img;
  CardFavourites(this.texto, this.img);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      width: 270,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              this.img,
              Text(
                this.texto,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
                child: Text(
                  "Ready Wash Stainless",
                  style: TextStyle(fontSize: 12),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                child: Icon(
                  Icons.send,
                  size: 25,
                  color: Colors.blue,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border(
                    top: BorderSide(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 0.3),
                    bottom: BorderSide(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 0.3),
                    left: BorderSide(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 0.3),
                    right: BorderSide(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 0.3),
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    "4.6",
                    style: TextStyle(fontSize: 12),
                  ),
                  Icon(
                    Icons.star,
                    size: 13,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.star,
                    size: 13,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.star,
                    size: 13,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.star,
                    size: 13,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.star,
                    size: 13,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
