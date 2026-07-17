import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.onRide, required this.onParcel});
  final VoidCallback onRide;
  final VoidCallback onParcel;

  @override
  Widget build(BuildContext context) => ListView(
        padding: const EdgeInsets.fromLTRB(20, 18, 20, 28),
        children: [
          Row(children: [
            const CircleAvatar(radius: 23, backgroundColor: AppColors.softGreen, child: Icon(Icons.person, color: AppColors.green)),
            const SizedBox(width: 12),
            Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Good morning, Mayank', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700)), const SizedBox(height: 3), Row(children: const [Icon(Icons.location_on_outlined, size: 15, color: AppColors.green), SizedBox(width: 3), Text('Sector 62, Noida', style: TextStyle(fontSize: 13, color: Colors.black54))])])),
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none_rounded)),
          ]),
          const SizedBox(height: 24),
          Container(height: 178, decoration: BoxDecoration(color: AppColors.ink, borderRadius: BorderRadius.circular(24)), child: Stack(children: [
            Positioned(right: -18, top: 18, child: Icon(Icons.electric_rickshaw_rounded, color: AppColors.green.withOpacity(.78), size: 152)),
            Padding(padding: const EdgeInsets.all(22), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4), decoration: BoxDecoration(color: AppColors.green, borderRadius: BorderRadius.circular(20)), child: const Text('TRIGO GREEN RIDE', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10))),
              const SizedBox(height: 13), const Text('Every local trip\nshould feel easy.', style: TextStyle(color: Colors.white, fontSize: 22, height: 1.12, fontWeight: FontWeight.bold)), const SizedBox(height: 10), const Text('Quick. Affordable. Electric.', style: TextStyle(color: Color(0xFFBBD2C6), fontSize: 13)),
            ])),
          ])),
          const SizedBox(height: 26), Text('Where to?', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800)), const SizedBox(height: 12),
          _LocationBox(onTap: onRide), const SizedBox(height: 26), Text('Choose a service', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800)), const SizedBox(height: 13),
          Row(children: [Expanded(child: _ServiceCard(icon: Icons.electric_rickshaw, title: 'Ride', subtitle: 'Book a seat or ride', color: const Color(0xFFE9F8F1), onTap: onRide)), const SizedBox(width: 12), Expanded(child: _ServiceCard(icon: Icons.inventory_2_outlined, title: 'Send Parcel', subtitle: 'Across your city', color: const Color(0xFFFFF2DC), onTap: onParcel))]),
          const SizedBox(height: 26), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('Quick destinations', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)), TextButton(onPressed: () {}, child: const Text('Manage'))]),
          const _QuickPlace(icon: Icons.work_outline, title: 'Office', subtitle: 'Tower B, Sector 62'), const _QuickPlace(icon: Icons.home_outlined, title: 'Home', subtitle: 'Gaur City 2, Greater Noida'),
        ],
      );
}

class _LocationBox extends StatelessWidget { const _LocationBox({required this.onTap}); final VoidCallback onTap; @override Widget build(BuildContext context) => InkWell(onTap: onTap, borderRadius: BorderRadius.circular(16), child: Container(padding: const EdgeInsets.all(16), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), boxShadow: [BoxShadow(color: Colors.black.withOpacity(.06), blurRadius: 12, offset: const Offset(0, 4))]), child: const Row(children: [Icon(Icons.search, color: AppColors.green), SizedBox(width: 12), Text('Search destination', style: TextStyle(fontSize: 16, color: Colors.black54)), Spacer(), Icon(Icons.arrow_forward_ios, size: 16)]))); }
class _ServiceCard extends StatelessWidget { const _ServiceCard({required this.icon, required this.title, required this.subtitle, required this.color, required this.onTap}); final IconData icon; final String title, subtitle; final Color color; final VoidCallback onTap; @override Widget build(BuildContext context) => InkWell(onTap: onTap, borderRadius: BorderRadius.circular(18), child: Container(height: 142, padding: const EdgeInsets.all(16), decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(18)), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Icon(icon, size: 34, color: AppColors.ink), const Spacer(), Text(title, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w800)), const SizedBox(height: 3), Text(subtitle, style: const TextStyle(fontSize: 11, color: Colors.black54))]))); }
class _QuickPlace extends StatelessWidget { const _QuickPlace({required this.icon, required this.title, required this.subtitle}); final IconData icon; final String title, subtitle; @override Widget build(BuildContext context) => ListTile(contentPadding: EdgeInsets.zero, leading: CircleAvatar(backgroundColor: const Color(0xFFF1F4F2), child: Icon(icon, color: AppColors.ink)), title: Text(title, style: const TextStyle(fontWeight: FontWeight.w700)), subtitle: Text(subtitle), trailing: const Icon(Icons.chevron_right)); }
