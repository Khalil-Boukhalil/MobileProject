import 'package:flutter/material.dart';
class OfferDetailsPage extends StatelessWidget {
  final String title;
  final String price;
  final Image img;

  OfferDetailsPage(this.title, this.price ,this.img);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offer Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'Price: $price',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20,),
            Container(
              width: 200,
              height: 200,
              child: img,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {

              },
              child: Text('Register'),
            ),


          ],
        ),
      ),
    );
  }
}
