import 'package:flutter/material.dart';

class PersonalizationPage3 extends StatefulWidget {
  const PersonalizationPage3({super.key});

  @override
  State<PersonalizationPage3> createState() => _PersonalizationPage3State();
}

class _PersonalizationPage3State extends State<PersonalizationPage3> {
  int? selectedArea; // hanya satu opsi

  static const Color primaryGreen = Color(0xFF093832);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: primaryGreen,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: screenHeight + 60,
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(height: 180, color: primaryGreen),
                    Expanded(
                      child: ClipPath(
                        clipper: TopCurveClipper(),
                        child: Container(color: Colors.white),
                      ),
                    ),
                  ],
                ),

                // baris atas
                Positioned(
                  top: 16,
                  left: 16,
                  right: 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0x33E8F5F2),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.12),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          iconSize: 22,
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            if (Navigator.of(context).canPop()) {
                              Navigator.pop(context);
                            }
                          },
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            '3/3',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0x33E8F5F2),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.12),
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: const Text(
                              'Lewati',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // card + tombol
                Positioned(
                  top: 150,
                  left: 16,
                  right: 16,
                  child: Transform.translate(
                    offset: const Offset(0, -30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        AreaCard(
                          title: 'Berapa luas area tanam yang kamu miliki?',
                          iconAsset: 'assets/images/HomepageAndPersonalization/Plant.png',
                          areaImages: const [
                            'assets/images/HomepageAndPersonalization/Luas_area1.png',
                            'assets/images/HomepageAndPersonalization/Luas_area2.png',
                            'assets/images/HomepageAndPersonalization/Luas_area3.png',
                          ],
                          options: const ['< 1 m²', '1–3 m²', '> 3 m²'],
                          selectedIndex: selectedArea,
                          onSelect: (i) => setState(() => selectedArea = i),
                        ),
                        const SizedBox(height: 24),
                        SizedBox(
                          height: 52,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF07996C),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            onPressed: () {
                              // simpan & selesai
                            },
                            child: const Text(
                              'Simpan',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// CARD AREA DENGAN GAMBAR ---------------------------------------

class AreaCard extends StatelessWidget {
  final String title;
  final String iconAsset;
  final List<String> areaImages;
  final List<String> options;
  final int? selectedIndex;
  final ValueChanged<int> onSelect;

  const AreaCard({
    super.key,
    required this.title,
    required this.iconAsset,
    required this.areaImages,
    required this.options,
    required this.selectedIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.12),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // icon + judul
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE9F5F3),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: Image.asset(iconAsset, fit: BoxFit.contain),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      height: 1.4,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            for (int i = 0; i < options.length; i++) ...[
              _AreaOptionRow(
                label: options[i],
                index: i,
                selectedIndex: selectedIndex,
                areaImage: areaImages[i],
                onTap: onSelect,
              ),
              if (i != options.length - 1) const SizedBox(height: 12),
            ],
          ],
        ),
      ),
    );
  }
}

class _AreaOptionRow extends StatelessWidget {
  final String label;
  final int index;
  final int? selectedIndex;
  final String areaImage;
  final ValueChanged<int> onTap;

  const _AreaOptionRow({
    required this.label,
    required this.index,
    required this.selectedIndex,
    required this.areaImage,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = selectedIndex == index;

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () => onTap(index),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFE9F5F3) : const Color(0xFFF7F8FA),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isSelected
                ? const Color(0xFF1E9C73)
                : const Color(0xFFDDDFE3),
            width: 1.4,
          ),
        ),
        child: Row(
          children: [
            // radio di paling kiri
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected
                      ? const Color(0xFF1E9C73)
                      : const Color(0xFFB0B3BA),
                  width: 2,
                ),
              ),
              child: isSelected
                  ? Center(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF1E9C73),
                        ),
                      ),
                    )
                  : null,
            ),
            const SizedBox(width: 12),
            // gambar area
            Flexible(
              flex: 0,
              child: Image.asset(
                areaImage,
                fit: BoxFit.contain,
                height: index == 0
                    ? 40
                    : index == 1
                    ? 80
                    : 120,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: isSelected ? const Color(0xFF1E9C73) : Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// CLIPPER ------------------------------------------------------

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
