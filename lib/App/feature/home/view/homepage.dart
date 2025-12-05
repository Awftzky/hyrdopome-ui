import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detail_tanaman_page.dart';
// import 'App/features/widgets/main_nav_bar.dart';
import '../../widgets/main_nav_bar.dart';


void main() {
  runApp(const MainApp());
}

// --------------------------------------------------------------
// MAIN APP
// --------------------------------------------------------------

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.plusJakartaSansTextTheme()),
      home: const HomePage(), 
    );
  }
}

// --------------------------------------------------------------
// MODEL PRODUK
// --------------------------------------------------------------

class ProductSale {
  final String image;
  final String title;
  final String subtitle;
  final String price;
  final String discount;

  ProductSale({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.discount,
  });
}

final List<ProductSale> productSales = [
  ProductSale(
    image: 'assets/images/HomepageAndPersonalization/Pipa.png',
    title: 'Starter Kit',
    subtitle: 'Paket Pipa NFT',
    price: 'Rp 125.000',
    discount: 'Rp 150.000',
  ),
  ProductSale(
    image: 'assets/images/HomepageAndPersonalization/Paket-lengkap.png',
    title: 'Starter Kit',
    subtitle: 'Paket Lengkap',
    price: 'Rp 55.000',
    discount: 'Rp 75.000',
  ),
];

class Product {
  final String image;
  final String title;
  final String status;
  final String timeText;

  Product({
    required this.image,
    required this.title,
    required this.status,
    required this.timeText,
  });
}

final List<Product> products = [
  Product(
    image: 'assets/images/HomepageAndPersonalization/Selada.png',
    title: 'Bayam Hidroponik',
    status: 'Mudah',
    timeText: '3-5 Ming',
  ),
  Product(
    image: 'assets/images/HomepageAndPersonalization/Bayam.png',
    title: 'Bayam Hidoponik',
    status: 'Mudah',
    timeText: '3-4 Ming',
  ),
  Product(
    image: 'assets/images/HomepageAndPersonalization/Pakcoy.png',
    title: 'Pakcoy Hidroponik',
    status: 'Sedang',
    timeText: '4-5 Ming',
  ),
  Product(
    image: 'assets/images/HomepageAndPersonalization/Seledri.png',
    title: 'Seledri hidroponik',
    status: 'Sedang',
    timeText: '8-10 Ming',
  ),
  Product(
    image: 'assets/images/HomepageAndPersonalization/Stroberi.png',
    title: 'Stroberi Hidroponik',
    status: 'Sulit',
    timeText: '5-6 Ming',
  ),
];

// --------------------------------------------------------------
// HOME PAGE
// --------------------------------------------------------------

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; // index navbar

  @override
  Widget build(BuildContext context) {
    const Color primaryGreen = Color(0xFF093832);

    return Scaffold(
      backgroundColor: primaryGreen,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 180,
                left: 0,
                right: 0,
                bottom: 0,
                child: ClipPath(
                  clipper: TopCurveClipper(),
                  child: Container(color: Colors.white),
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: 20),
                  const HeaderWrapper(),
                  const SizedBox(height: 80),
                  progressSection(),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Rekomendasi Untukmu',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 12),
                        GridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 12,
                          childAspectRatio: 0.88,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          children: products
                              .map((p) => productCard(p, context))
                              .toList(),
                        ),
                        const SizedBox(height: 32),
                        Row(
                          children: [
                            const Text(
                              'Starter Kit Flash Sale 🔥',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(width: 12),
                            flashSaleTimer(),
                          ],
                        ),
                        const SizedBox(height: 12),
                        GridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 12,
                          childAspectRatio: 0.78,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          children: productSales
                              .map((p) => discountCard(p))
                              .toList(),
                        ),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MainNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}


// --------------------------------------------------------------
// HEADER
// --------------------------------------------------------------

class HeaderWrapper extends StatelessWidget {
  const HeaderWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Halo Mellafesa!',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 4),
                Text(
                  'Berkebun Apa Hari Ini?',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          const CircleAvatar(
            radius: 28,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage('assets/images/HomepageAndPersonalization/Memoji Girls 4-12.png'),
            ),
          ),
        ],
      ),
    );
  }
}

// --------------------------------------------------------------
// PROGRESS SECTION
// --------------------------------------------------------------

Widget progressSection() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      children: [
        Container(
          width: double.infinity,
          height: 177,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.12),
                blurRadius: 12,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Belum Ada Progress\nTanaman Hari Ini…',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          height: 1.5,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Ayo pilih tanaman pertama kamu\n'
                        'dan mulai tanam sekarang!',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          height: 1.3,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: SizedBox(
                  width: 90,
                  height: 130,
                  child: Image.asset(
                    'assets/images/HomepageAndPersonalization/Tree.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          height: 48,
          decoration: BoxDecoration(
            color: const Color(0xFFF4F5F7),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 14),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 8),
                  ],
                ),
              ),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Cari tanaman...',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                    isCollapsed: true,
                  ),
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// --------------------------------------------------------------
// STATUS DOTS
// --------------------------------------------------------------

Widget statusWithDots(String status, String timeText) {
  Color dotColor = Colors.grey;

  if (status.toLowerCase() == 'mudah') {
    dotColor = Colors.green;
  } else if (status.toLowerCase() == 'sedang') {
    dotColor = Colors.orange;
  } else if (status.toLowerCase() == 'sulit') {
    dotColor = Colors.red;
  }

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: dotColor,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            status,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: dotColor,
            ),
          ),
        ],
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/HomepageAndPersonalization/clock.png',
            width: 12,
            height: 12,
            color: Colors.black54,
          ),
          const SizedBox(width: 6),
          Text(
            timeText,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    ],
  );
}

// --------------------------------------------------------------
// PRODUCT CARD
// --------------------------------------------------------------

Widget productCard(Product product, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const DetailTanamanPage(),
        ),
      );
    },
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.12),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                product.image,
                width: double.infinity,
                height: 128,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                statusWithDots(product.status, product.timeText),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

// --------------------------------------------------------------
// DISCOUNT CARD
// --------------------------------------------------------------

Widget discountCard(ProductSale productSale) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 3),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.12),
          blurRadius: 12,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              productSale.image,
              width: double.infinity,
              height: 128,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productSale.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Colors.grey,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 2),
              Text(
                productSale.subtitle,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    productSale.price,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.red,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    productSale.discount,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// --------------------------------------------------------------
// FLASH SALE TIME
// --------------------------------------------------------------

Widget flashSaleTimer() {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      _timeBox('01'),
      const SizedBox(width: 4),
      const Text(
        ':',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Color(0xFF009670),
        ),
      ),
      const SizedBox(width: 4),
      _timeBox('20'),
      const SizedBox(width: 4),
      const Text(
        ':',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Color(0xFF009670),
        ),
      ),
      const SizedBox(width: 4),
      _timeBox('47'),
    ],
  );
}

Widget _timeBox(String value) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
    decoration: BoxDecoration(
      color: const Color(0xFF009670),
      borderRadius: BorderRadius.circular(6),
    ),
    child: Text(
      value,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}

// --------------------------------------------------------------
// CUSTOM CLIPPER
// --------------------------------------------------------------

class TopCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();

    path.moveTo(0, 0);
    path.quadraticBezierTo(size.width / 2, 80, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
