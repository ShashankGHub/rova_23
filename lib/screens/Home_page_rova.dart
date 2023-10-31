import 'package:flutter/material.dart';
import 'package:rova_23/screens/imagechooser.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello user',
                  style: TextStyle(fontSize: 25.0),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.account_circle),
                ),
              ],
            ),
            SizedBox(height: 25.0),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Partly cloudy',
                            style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            children: [
                              Icon(
                                Icons.cloud,
                                color: Colors.lightBlueAccent,
                                size: 50.0,
                              ),
                              Icon(
                                Icons.wb_sunny,
                                color: Colors.yellow,
                                size: 50.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Dehradun',
                            style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            '22°C',
                            style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Text(
              'Detect Disease',
              style: TextStyle(fontSize: 25.0),
            ),
            SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => ImageChooserScreen(),
                  //     ),
                  //   );
                  // },
                  child: Column(
                    children: [
                      Image.asset(
                        'images/overview3.png',
                        width: 100.0,
                        height: 100.0,
                      ),
                      SizedBox(height: 8.0),
                      Text('Scan infected crop'),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.green,
                    ),
                    SizedBox(height: 15.0),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'images/overview2.png',
                      width: 115.0,
                      height: 115.0,
                    ),
                    SizedBox(height: 35.0),
                    Text('Get instant report'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Text(
              'My Crops',
              style: TextStyle(fontSize: 25.0),
            ),
            SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildCropBox('Tomato', 'images/tomato.png'),
                _buildCropBox('Banana', 'images/banana.png'),
                _buildCropBox('Brinjal', 'images/brinjal.png'),
              ],
            ),
            SizedBox(height: 25.0),
            SizedBox(height: 25.0),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 2.0),
                borderRadius: BorderRadius.circular(100.0),
                color: Colors.green,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildNavBarItem(Icons.home, 'Home'),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ImageChooserScreen(),
                        ),
                      );
                    },
                    child: _buildCenterIcon(),
                  ),
                  _buildNavBarItem(Icons.account_circle, 'Profile'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCropBox(String cropName, String imagePath) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.green, width: 2.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 60.0,
            height: 60.0,
          ),
          SizedBox(height: 8.0),
          Text(cropName),
        ],
      ),
    );
  }

  Widget _buildNavBarItem(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 40.0,
        ),
        SizedBox(height: 5.0),
        Text(
          text,
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildCenterIcon() {
    return Container(
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Center(
        child: Icon(
          Icons.qr_code_scanner,
          color: Colors.green,
          size: 40.0,
        ),
      ),
    );
  }
}
