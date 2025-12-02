import 'package:flutter/material.dart';

class ShirtPage extends StatefulWidget {
  const ShirtPage({super.key});

  @override
  State<ShirtPage> createState() => _ShirtPageState();
}

class _ShirtPageState extends State<ShirtPage> {
  String _selectedSize = '';

  void placeholderCallbackForButtons() {
    // This is a placeholder function that does nothing.
    // You can replace it with your desired functionality.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 100.0,
              backgroundColor: Colors.white,
              elevation: 0,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              flexibleSpace: const FlexibleSpaceBar(
                title: Text(
                  'Shirt',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                centerTitle: true,
              ),
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black,
                  ),
                  onPressed: placeholderCallbackForButtons,
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // Product details
                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Product image
                          Container(
                            height: 300,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey[200],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/shirt.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),

                          const SizedBox(height: 24),

                          // Product title and price
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Shirt',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '\£6.99',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),

                          // Product description
                          const Text(
                            '''Redesigned with a fresh chest logo, our Essential T-shirts are made for everyday wear with a modern twist. Soft, durable, and effortlessly versatile — these are the elevated basics your wardrobe's been waiting for.''',
                            style: TextStyle(
                              color: Colors.grey,
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(height: 24),

                          // Size selection
                          const Text(
                            'Size',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              for (var size in ['S', 'M', 'L', 'XL'])
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: ChoiceChip(
                                    label: Text(size),
                                    selected: _selectedSize == size,
                                    onSelected: (selected) {
                                      setState(() {
                                        if (selected) {
                                          _selectedSize = size;
                                        }
                                      });
                                    },
                                    selectedColor: Colors.deepPurple,
                                    labelStyle: TextStyle(
                                      color: _selectedSize == size
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(height: 24),

                          // Add to cart button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: placeholderCallbackForButtons,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurple,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text(
                                'Add to Cart',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
