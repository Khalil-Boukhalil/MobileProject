import 'package:flutter/material.dart';
import 'offersdetails.dart';
class OffersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gym Offers'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OfferDetailsPage('Cardio', '\$30' ,
                    Image.asset(
                      'images/cardio.jpg',
                      width: 200, // Set the desired width
                      height: 200, // Set the desired height
                      fit: BoxFit.cover, // Choose an appropriate fit strategy
                    ),

                  )),

                );
              },
              child: GymOfferCard('Cardio', '\$30'),
            ),
            GestureDetector(
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OfferDetailsPage('Bodybuilding', '\$50' ,
                      Image.asset(
                          'images/bbuilder.jpg',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                          ))),
                );
              },
              child: GymOfferCard('Bodybuilding', '\$50'),
            ),
            GestureDetector(
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OfferDetailsPage('Both', '\$60',
                      Image.asset(
                        'images/both.jpg',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      )
                  )),
                );
              },
              child: GymOfferCard('Both', '\$60' ),
            ),
            GestureDetector(
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OfferDetailsPage('Private Coach', '\$30 (additional)',
                      Image.asset(
                        'images/coach.jpg',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      )

                  )),
                );
              },
              child: GymOfferCard('Private Coach', '\$30 (additional)'),
            ),
          ],
        ),
      ),
    );
  }
}

class GymOfferCard extends StatelessWidget {
  final String title;
  final String price;


  GymOfferCard(this.title, this.price );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(30),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.indigo, // Background color
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(2, 6 ),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            'Price: $price',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
