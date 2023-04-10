import 'package:flutter/material.dart';
// import 'package:home_page/biscuits.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("MainProduct"), centerTitle: true),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/2.jpg"), fit: BoxFit.cover),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Text(
                    'All Categories',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          Row(
            children: [
              Card(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/3.jpg",
                      width: 110,
                    ),
                    TextButton(
                      child: const Text(
                        'Biscuits',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => const BiscuitsPage(),
                        //     ));
                      },
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/4.jpg",
                      width: 110,
                      height: 75,
                    ),
                    TextButton(
                      child: const Text(
                        'SoftDrink',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/5.jpg",
                      width: 110,
                    ),
                    TextButton(
                      child: const Text(
                        'Dairy Products',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Text(
                    'Top 3 Products',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/6.png",
                      width: 110,
                    ),
                    const Text("Wafers\nRs: 150"),
                    TextButton(
                      child: const Text(
                        'ADD',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/7.jpg",
                      width: 110,
                      height: 83,
                    ),
                    const Text("Milk Shake\nRs: 50"),
                    TextButton(
                      child: const Text(
                        'ADD',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/8.png",
                      width: 100,
                      height: 80,
                    ),
                    const Text("Cold Coffee\nRs: 85"),
                    TextButton(
                      child: const Text(
                        'ADD',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
