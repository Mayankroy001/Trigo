import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class TrackingPage extends StatelessWidget {
  const TrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Trigo is on the way'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: const Color(0xFFE5F4EC),
              child: Stack(
                children: [
                  Center(
                    child: Icon(
                      Icons.electric_rickshaw,
                      size: 110,
                      color: AppColors.green.withOpacity(0.7),
                    ),
                  ),
                  const Positioned(
                    left: 44,
                    top: 85,
                    child: Icon(
                      Icons.location_on,
                      color: AppColors.green,
                      size: 38,
                    ),
                  ),
                  const Positioned(
                    right: 45,
                    bottom: 80,
                    child: Icon(
                      Icons.location_pin,
                      color: Color(0xFFFF8A45),
                      size: 38,
                    ),
                  ),
                  Positioned(
                    left: 72,
                    top: 120,
                    child: Transform.rotate(
                      angle: 0.55,
                      child: Container(
                        width: 220,
                        height: 4,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(22, 22, 22, 28),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
            ),
            child: Column(
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: AppColors.softGreen,
                      child:
                          Icon(Icons.person, size: 32, color: AppColors.green),
                    ),
                    SizedBox(width: 13),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Arjun Kumar',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'DL 1R AB 4287 • ★ 4.9',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.shield_outlined, color: AppColors.green),
                  ],
                ),
                const SizedBox(height: 18),
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: AppColors.softGreen,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.access_time, color: AppColors.green),
                      SizedBox(width: 10),
                      Text(
                        'Arriving in 3 min',
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                      Spacer(),
                      Text(
                        '₹42',
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.call_outlined),
                        label: const Text('Call'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.chat_bubble_outline),
                        label: const Text('Chat'),
                      ),
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
}
