import 'package:flutter/material.dart';
import 'package:union_shop/main.dart';

class allPage extends StatelessWidget {
  const allPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All products'),
        backgroundColor: const Color(0xFF4d2963),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Container(
              height: 100,
              color: Colors.white,
              child: Column(
                children: [
                  // Top banner
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    color: const Color(0xFF4d2963),
                    child: const Text(
                      'BIG SALE! OUR ESSENTIAL RANGE HAS DROPPED IN PRICE! OVER 20% OFF! COME GRAB YOURS WHILE STOCK LASTS!',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  // Main header
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                            },
                            child: Image.network(
                              'https://shop.upsu.net/cdn/shop/files/upsu_300x300.png?v=1614735854',
                              height: 18,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  color: Colors.grey[300],
                                  width: 18,
                                  height: 18,
                                  child: const Center(
                                    child: Icon(Icons.image_not_supported,
                                        color: Colors.grey),
                                  ),
                                );
                              },
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Collection content
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const Text(
                    'ALL Products',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 24),
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 24,
                    mainAxisSpacing: 24,
                    children: [
                      ProductCard(
                        title: 'Portsmouth City Bookmark',
                        price: '£3.00',
                        imageAsset: 'assets/PortsmouthCityBookmark.png',
                        onTap: () {
                          Navigator.pushNamed(context, '/bookmark');
                        },
                      ),
                      ProductCard(
                        title: 'Shirt',
                        price: '£6.99',
                        imageAsset: 'assets/shirt.png',
                        onTap: () {
                              Navigator.pushNamed(context, '/shirt');
                        },
                      ),
                      ProductCard(
                        title: 'Portsmouth City Magnet',
                        price: '£4.50',
                        imageAsset: 'assets/PortsmouthCityMagnet.png',
                        onTap: () {
                              Navigator.pushNamed(context, '/magnet');
                        },
                      ),
                      ProductCard(
                        title: 'Hoodie',
                        price: '£20.99',
                        imageAsset: 'assets/hoodie.png',
                        onTap: () {
                              Navigator.pushNamed(context, '/hoodie');
                        },
                      ),
                      ProductCard(
                        title: 'Portsmouth City Postcard',
                        price: '£1.00',
                        imageAsset: 'assets/PortsmouthCityPostcard.png',
                        onTap: () {
                              Navigator.pushNamed(context, '/postcard');
                        },
                      ),
                      ProductCard(
                        title: 'Signature Shirt',
                        price: '£14.99',
                        imageAsset: 'assets/sig_shirt.png',
                        onTap: () {
                              Navigator.pushNamed(context, '/sig_shirt');
                        },
                      ),
                       ProductCard(
                        title: 'Signature hoodie',
                        price: '£32.99',
                        imageAsset: 'assets/sig_hoodie.png',
                        onTap: () {
                              Navigator.pushNamed(context, '/sig_hoodie');
                        },
                      ),
                      ProductCard(
                        title: 'Portsmouth City Keyring',
                        price: '£6.75',
                        imageAsset: 'assets/PortsmouthCityKeyring.png',
                        onTap: () {
                              Navigator.pushNamed(context, '/keyring');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Footer
            Container(
              width: double.infinity,
              color: Colors.grey[50],
              padding: const EdgeInsets.all(24),
              child: const Text(
                ''' Opening Hours                         Help and Information
                      
                ❄️ Winter Break Closure Dates ❄️      Search
                Closing 4pm 19/12/2025                 Terms & Conditions of Sale Policy,
                Reopening 10am 05/01/2026
                Last post date: 12pm on 18/12/2025
                ------------------------
                (Term Time)
                Monday - Friday 10am - 4pm
                (Outside of Term Time / Consolidation Weeks)
                Monday - Friday 10am - 3pm
                Purchase online 24/7''',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}