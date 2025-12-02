import 'package:flutter/material.dart';
import 'personalizationPage3.dart';

class PersonalizationPage2 extends StatefulWidget {
  const PersonalizationPage2({super.key});

  @override
  State<PersonalizationPage2> createState() => _PersonalizationPage2State();
}

class _PersonalizationPage2State extends State<PersonalizationPage2> {
  // CARD 1: multiple choice
  Set<int> selectedTypes = {};

  // CARD 2 & 3: single choice
  int? selectedTime;
  int? selectedPlace;

  static const Color primaryGreen = Color(0xFF093832);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: primaryGreen,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: screenHeight + 355,
            child: Stack(
              children: [
                // layer hijau + putih
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
                            '2/3',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 8),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const PersonalizationPage3(),
                                ),
                              );
                            },
                            child: Container(
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
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  top: 70,
                  left: 20,
                  right: 16,
                  child: HeaderWrapper(),
                ),

                // konten card + tombol
                Positioned(
                  top: 150,
                  left: 16,
                  right: 16,
                  child: Transform.translate(
                    offset: const Offset(0, -30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // CARD 1: jenis tanaman (multi choice)
                        QuestionCard(
                          title:
                              'Jenis tanaman apa saja yang ingin kamu tanam?',
                          iconAsset: 'assets/images/HomepageAndPersonalization/Plant.png',
                          options: const [
                            'Sayuran daun (misalnya selada, bayam)',
                            'Buah (misalnya tomat, stroberi)',
                            'Tanaman herbal',
                            'Belum tahu / ingin rekomendasi',
                          ],
                          isMultiSelect: true,
                          selectedIndexes: selectedTypes,
                          onSelect: (i) {
                            setState(() {
                              if (selectedTypes.contains(i)) {
                                selectedTypes.remove(i);
                              } else {
                                selectedTypes.add(i);
                              }
                            });
                          },
                        ),

                        const SizedBox(height: 16),

                        // CARD 2: waktu (single)
                        QuestionCard(
                          title:
                              'Berapa waktu yang bisa diluangkan per hari untuk merawat tanaman?',
                          iconAsset: 'assets/images/HomepageAndPersonalization/Plant.png',
                          options: const [
                            '< 10 menit',
                            '10–30 menit',
                            '> 30 menit',
                          ],
                          isMultiSelect: false,
                          selectedIndex: selectedTime,
                          onSelect: (i) => setState(() => selectedTime = i),
                        ),

                        const SizedBox(height: 16),

                        // CARD 3: lokasi (single)
                        QuestionCard(
                          title:
                              'Di mana kamu akan menanam tanaman hidroponik?',
                          iconAsset: 'assets/images/HomepageAndPersonalization/Plant.png',
                          options: const [
                            'Dalam ruangan',
                            'Luar ruangan',
                            'Balkon atau teras',
                          ],
                          isMultiSelect: false,
                          selectedIndex: selectedPlace,
                          onSelect: (i) => setState(() => selectedPlace = i),
                        ),

                        const SizedBox(height: 24),

                        // tombol Selanjutnya
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const PersonalizationPage3(),
                                ),
                              );
                            },
                            child: const Text(
                              'Selanjutnya',
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

// HEADER -------------------------------------------------------

class HeaderWrapper extends StatelessWidget {
  const HeaderWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.only(right: 16));
  }
}

// CARD PERTANYAAN ----------------------------------------------

class QuestionCard extends StatelessWidget {
  final String title;
  final String iconAsset;
  final List<String> options;

  // single
  final int? selectedIndex;

  // multi
  final Set<int>? selectedIndexes;

  final bool isMultiSelect;
  final ValueChanged<int> onSelect;

  const QuestionCard({
    super.key,
    required this.title,
    required this.iconAsset,
    required this.options,
    this.selectedIndex,
    this.selectedIndexes,
    this.isMultiSelect = false,
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
            // list opsi
            for (int i = 0; i < options.length; i++) ...[
              _SelectOptionBox(
                label: options[i],
                index: i,
                isSelected: isMultiSelect
                    ? (selectedIndexes ?? {}).contains(i)
                    : selectedIndex == i,
                isMultiSelect: isMultiSelect,
                onTap: onSelect,
              ),
              if (i != options.length - 1) const SizedBox(height: 16),
            ],
          ],
        ),
      ),
    );
  }
}

// BOX SATU / MULTI OPSI ----------------------------------------

class _SelectOptionBox extends StatelessWidget {
  final String label;
  final int index;
  final bool isSelected;
  final bool isMultiSelect;
  final ValueChanged<int> onTap;

  const _SelectOptionBox({
    required this.label,
    required this.index,
    required this.isSelected,
    required this.isMultiSelect,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(24),
      onTap: () => onTap(index),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
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
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: isMultiSelect ? BoxShape.rectangle : BoxShape.circle,
                borderRadius: isMultiSelect ? BorderRadius.circular(6) : null,
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
                        decoration: BoxDecoration(
                          shape: isMultiSelect
                              ? BoxShape.rectangle
                              : BoxShape.circle,
                          borderRadius: isMultiSelect
                              ? BorderRadius.circular(3)
                              : null,
                          color: const Color(0xFF1E9C73),
                        ),
                      ),
                    )
                  : null,
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
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
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
