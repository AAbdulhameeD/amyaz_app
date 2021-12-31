import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InkWell(
              hoverColor: Colors.white,
              onTap: () {
                print('hhh');
              },
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('المنزل'),
                          IconButton(onPressed: () {}, icon: Icon(Icons.close))
                        ],
                      ),
                      color: Colors.grey.shade200,
                      padding: EdgeInsets.all(5.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            'المدينة',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            'القاهرة',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    //address
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            'العنوان',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            'un named road, Mit Rady ,Kafr Shoukr, Al Qalubia Governorate , Egypt',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
