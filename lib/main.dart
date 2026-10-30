import 'package:flutter/material.dart';

void main() {
  runApp(const OneCartApp());
}

class OneCartApp extends StatelessWidget {
  const OneCartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OneCart for Kasaragod',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFBECC8),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E7D32),
          surface: const Color(0xFFFBECC8),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const green = Color(0xFF18864B);
  static const darkGreen = Color(0xFF123D2A);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Background colour
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color(0xFFFBECC8),
          ),

          // Kerala Theyyam boat image at bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: screenHeight * 0.43,
            child: Image.asset(
              'assets/images/theyyambackwater.png',
              fit: BoxFit.contain,
              alignment: Alignment.bottomCenter,
            ),
          ),

          // Main branding
          SafeArea(
            child: Column(
              children: [
                const Spacer(flex: 3),

                // Green shopping trolley
                const Icon(Icons.shopping_cart_rounded, size: 85, color: green),

                const SizedBox(height: 5),

                // App name
                const Text(
                  'OneCart',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: darkGreen,
                    letterSpacing: -1,
                  ),
                ),
                SizedBox(height: .01),
                const Text(
                  'for Kasaragod',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: green,
                  ),
                ),

                const SizedBox(height: .05),

                const Text(
                  'Groceries  •  Stationery  •  Delivery',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xFF397B62),
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const Spacer(flex: 2),

                // Get Started button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 160),
                  child: SizedBox(
                    width: double.infinity,
                    height: 35,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: green,
                        foregroundColor: Colors.white,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'REGISER',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 160),
                  child: SizedBox(
                    width: double.infinity,
                    height: 35,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: green,
                        foregroundColor: Colors.white,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 12),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Login screen
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OneCart Login')),
      body: const Center(
        child: Text(
          'Welcome to OneCart!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
