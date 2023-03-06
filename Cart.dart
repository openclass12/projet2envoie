import 'package:ecormece/main_screen/Costumer_Home_Screen.dart';
import 'package:ecormece/main_screen/stores.dart';
import 'package:ecormece/widgets/Appbar_title.dart';
import 'package:flutter/material.dart';

class CartCategory extends StatefulWidget {
  const CartCategory({super.key});

  @override
  State<CartCategory> createState() => _CartCategoryState();
}

class _CartCategoryState extends State<CartCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const AppbarTitle(
          subcatename: 'Cart',
        ),
        actions: const [
          Icon(
            Icons.delete_forever,
            color: Colors.black,
            weight: 8,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Your Cart Is Empty',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 50),
            Material(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(25),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>const customerHomeScreen()));
                },
                minWidth: MediaQuery.of(context).size.width * 0.6,
                child: const Text(
                  'continue Shopping',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Total:  \$',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 199, 191, 191)),
              ),
              Text(
                '00.00',
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 255, 4, 4),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(25)),
              width: MediaQuery.of(context).size.width * 0.45,
              child: MaterialButton(
                onPressed: () {
                  
                },
                child: const Text('CHECk OUT'),
              ))
        ],
      ),
    );
    ;
  }
}
