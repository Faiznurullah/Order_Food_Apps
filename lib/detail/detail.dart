import 'package:flutter/material.dart';

class detail extends StatelessWidget {
  detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black12,
          ),
        ),
        title: Text(
          "Details Food",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 28,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Mized pizza with cheese, meal, and chilli",
              style: TextStyle(
                fontSize: 17,
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 22,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "4.7",
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Image.asset("assets/img/Pizza.png"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "120",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  width: 2,
                  color: Colors.black38,
                ),
                Column(
                  children: [
                    Text(
                      "Volume",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "12 Inch",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  width: 2,
                  color: Colors.black38,
                ),
                Column(
                  children: [
                    Text(
                      "Distance",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "1.2 Km",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Order",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black45,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.add_circle_outline_rounded,
                            color: Colors.black45,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "01",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.remove,
                            color: Colors.black45,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Delivery",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black45,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Express",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black45,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "\$12.44",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 28,
            ),
            SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Buy Now",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
          ],
        ),
      ),
    );
  }
}
