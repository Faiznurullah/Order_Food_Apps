import 'package:flutter/material.dart';
import '../home/home.dart';

class welcome extends StatelessWidget {
  welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset('assets/img/boy.png'),
          SizedBox(
            height: 5,
          ),
          Text(
            "Order Your Food Now",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Order food and get delivery withing a few minutes to your door',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => home()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 50,
                horizontal: 20,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_right_alt,
                    color: Colors.white,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
