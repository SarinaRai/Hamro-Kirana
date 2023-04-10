import 'package:flutter/material.dart';
import 'package:home_page/Login.dart';
import 'package:home_page/Register.dart';
import 'package:home_page/mainProduct.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String _title = 'Hamro Kirana';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: HomePage._title,
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text(HomePage._title),
        //   centerTitle: true,
        //   backgroundColor: Color(0xffD9D9D7),
        // ),
        body: MyStatefulWidget(),
        backgroundColor: Color(0xffD9D9D7),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              height: 450,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/1.jpg"), fit: BoxFit.cover),
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Hamro Kirana',
                  style: TextStyle(
                      color: Color(0xffD86716),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Order goods from local shop',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
                height: 70,
                padding: const EdgeInsets.fromLTRB(7, 15, 7, 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xffD86716))),
                  child: const Text('Register'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Register(),
                        ));
                  },
                )),
            Container(
                height: 70,
                padding: const EdgeInsets.fromLTRB(7, 15, 7, 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 177, 177, 173),
                  )),
                  child: const Text('Already a member? Sign in'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ));
                  },
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProductPage(),
                          ));
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ))),
          ],
        ));
  }
}
