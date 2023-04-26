import 'package:flutter/material.dart';
import '../detail/detail.dart';

class home extends StatelessWidget {
  home({super.key});

  List foods = [
    "Burger",
    "Pizza",
    "Snacks",
    "Water",
  ];

  List foods2 = [
    "Chicken Burger",
    "Cheese Pizza",
  ];

  List<Color> bgColors = [
    Color(0xFFFBDCDA),
    Color(0xFFD4EEF3),
    Color(0xFFFAE6D5),
    Color(0xFFEFCFE7),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery to",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black45,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                          Text(
                            "New York, USA",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/img/profile.jpg",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Positioned(
                        left: 40,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 3,
                            ),
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFF3F3F3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search food here...",
                        border: InputBorder.none,
                        prefix: Icon(
                          Icons.search,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.filter_list,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset('assets/img/banner.jpg'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: foods.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      margin: EdgeInsets.only(left: 15),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: bgColors[index],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/img/${foods[index]}.png",
                            height: 80,
                            width: 80,
                          ),
                          Text(
                            foods[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Poppular",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: foods2.length,
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => detail()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      margin: EdgeInsets.only(
                        left: 15,
                        top: 5,
                        bottom: 5,
                        right: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 12,
                            spreadRadius: 3,
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image.asset(
                              "assets/img/${foods2[index]}.jpg",
                              height: 120,
                              width: MediaQuery.of(context).size.width / 1.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      foods2[index],
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Fast food",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black12,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
