import 'package:flutter/material.dart';

class TaskplantsView extends StatelessWidget {
  const TaskplantsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Pantau Tanaman',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            width: 40,
            height: 40,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12)),
              border: Border.all(color: Color(0xFFE8ECF4)),
            ),

            child: Icon(Icons.arrow_back, color: Colors.black, size: 20),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with Image
            Stack(
              children: [
                // Hero Image
                Container(
                  height: 320,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                    child: Container(
                      color: Color(0xFF90C97B),
                      child: Center(
                        child: Icon(
                          Icons.local_florist,
                          size: 100,
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Plant Info Section
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Plant Name
                  Text(
                    'Selada Hidroponik',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 12),

                  // Difficulty & Day
                  Row(
                    children: [
                      Icon(Icons.circle, size: 10, color: Color(0xFF1B9876)),
                      SizedBox(width: 6),
                      Text(
                        'Mudah',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF1B9876),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 20),
                      Icon(Icons.favorite, size: 16, color: Color(0xFF1B9876)),
                      SizedBox(width: 6),
                      Text(
                        'Hari ke-1',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),

                  // Progress Section
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFF8F0),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xFFFFE4C4)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Progres Menanam',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Ayo mulai menanam!',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey[700],
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 8,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    '0% Selesai',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.orange,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // Plant Icon
                        Icon(Icons.eco, size: 50, color: Color(0xFF4CAF93)),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),

                  // Days Timeline
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildDayCircle('Hari\n01', true),
                        SizedBox(width: 12),
                        _buildDayCircle('Hari\n02', false),
                        SizedBox(width: 12),
                        _buildDayCircle('Hari\n03', false),
                        SizedBox(width: 12),
                        _buildDayCircle('Hari\n04', false),
                        SizedBox(width: 12),
                        _buildDayCircle('Hari\n05', false),
                        SizedBox(width: 12),
                        _buildDayCircle('Hari\n06', false),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),

                  // Tasks Section
                  Row(
                    children: [
                      Icon(Icons.push_pin, color: Colors.red, size: 18),
                      SizedBox(width: 6),
                      Text(
                        'Tugas Hari ke-1',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                  // Task List
                  _buildTaskItem('Siapkan Nutrisi & Air', true, true),
                  SizedBox(height: 12),
                  _buildTaskItem('Rendam Rockwool', false, false),
                  SizedBox(height: 12),
                  _buildTaskItem('Tanam Benih Selada', false, false),
                  SizedBox(height: 12),
                  _buildTaskItem('Tutup & Simpan', false, false),
                  SizedBox(height: 24),

                  // Tips Section
                  Row(
                    children: [
                      Icon(
                        Icons.emoji_objects_outlined,
                        color: Color(0xFF1B9876),
                        size: 18,
                      ),
                      SizedBox(width: 6),
                      Text(
                        'Tips Hari Ini:',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1B9876),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Gunakan air tanpa kaporit untuk hasil terbaik!',
                    style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 24),

                  // Marketplace Banner
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFFF9F43), Color(0xFFFF7F28)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Belum punya alat dan bahan?',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Kunjungi\nMarketplace\nHydropoMe!',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 16),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFF1B9876),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            'Belanja Sekarang',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),

                  // Action Buttons
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xFF1B9876), width: 2),
                    ),
                    child: Center(
                      child: Text(
                        'Lihat Panduan',
                        style: TextStyle(
                          color: Color(0xFF1B9876),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    decoration: BoxDecoration(
                      color: Color(0xFF1B9876),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'Hari ke-1 Selesai',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDayCircle(String text, bool isActive) {
    return Container(
      width: 54,
      height: 64,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF1B9876) : Color(0xFFE8F5F1),
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: isActive ? Colors.white : Color(0xFF1B9876),
            height: 1.3,
          ),
        ),
      ),
    );
  }

  Widget _buildTaskItem(String title, bool isCompleted, bool hasEdit) {
    return Row(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: isCompleted ? Color(0xFF1B9876) : Colors.white,
            border: Border.all(
              color: isCompleted ? Color(0xFF1B9876) : Colors.grey[300]!,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: isCompleted
              ? Icon(Icons.check, size: 16, color: Colors.white)
              : null,
        ),
        SizedBox(width: 12),
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black87,
              decoration: isCompleted ? TextDecoration.lineThrough : null,
            ),
          ),
        ),
        if (hasEdit) Icon(Icons.edit, size: 16, color: Color(0xFF1B9876)),
      ],
    );
  }
}
