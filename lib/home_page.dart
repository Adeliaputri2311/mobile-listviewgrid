import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart' as shadcn;

const Color _primaryPink = Color(0xFFE84393);
const Color _softPink = Color(0xFFFCE4EF);
const Color _lightPink = Color(0xFFFFF1F6);
const Color _rosePink = Color(0xFFF7A8C4);
const Color _darkPink = Color(0xFFC72C75);
const Color _background = Color(0xFFFFF9FC);
const Color _primaryText = Color(0xFF30232A);
const Color _secondaryText = Color(0xFF95838D);
const Color _border = Color(0xFFF3DFE8);
const Color _ratingGold = Color(0xFFF5B942);

@immutable
class Destination {
  const Destination({
    required this.id,
    required this.name,
    required this.location,
    required this.category,
    required this.imageUrl,
    required this.rating,
    required this.reviewCount,
    required this.price,
    required this.description,
    required this.openingHours,
    required this.facilities,
    required this.photoCredit,
    required this.photoLicense,
    required this.photoPageUrl,
    required this.licenseUrl,
    required this.popularity,
  });

  final String id;
  final String name;
  final String location;
  final String category;
  final String imageUrl;
  final double rating;
  final int reviewCount;
  final String price;
  final String description;
  final String openingHours;
  final List<String> facilities;
  final String photoCredit;
  final String photoLicense;
  final String photoPageUrl;
  final String licenseUrl;
  final int popularity;
}

const List<Destination> _destinations = [
  Destination(
    id: 'kawah-putih',
    name: 'Kawah Putih',
    location: 'Ciwidey, Bandung',
    category: 'Alam',
    imageUrl: 'https://thumb.wikimedia.org/wikipedia/commons/thumb/b/b6/A_view_of_Kawah_Putih_%28White_Crater_Lake%29_-_Bandung%2C_Indonesia%2C_2022-04-22.jpg/1280px-A_view_of_Kawah_Putih_%28White_Crater_Lake%29_-_Bandung%2C_Indonesia%2C_2022-04-22.jpg',
    rating: 4.8,
    reviewCount: 2410,
    price: 'Rp 30.000',
    description: 'Danau kawah berwarna putih kehijauan di tengah hutan pegunungan. Udara sejuk dan lanskap vulkaniknya menjadikannya salah satu tujuan alam paling ikonik di Bandung.',
    openingHours: '07.00–17.00',
    facilities: ['Area parkir', 'Kafe', 'Toilet', 'Shuttle'],
    photoCredit: 'Dave Is Killa',
    photoLicense: 'CC BY-SA 4.0',
    photoPageUrl: 'https://commons.wikimedia.org/wiki/File:A_view_of_Kawah_Putih_(White_Crater_Lake)_-_Bandung,_Indonesia,_2022-04-22.jpg',
    licenseUrl: 'https://creativecommons.org/licenses/by-sa/4.0/',
    popularity: 96,
  ),
  Destination(
    id: 'pantai-kelingking',
    name: 'Pantai Kelingking',
    location: 'Nusa Penida, Bali',
    category: 'Pantai',
    imageUrl: 'https://thumb.wikimedia.org/wikipedia/commons/thumb/b/bf/Kelingking_Beach%2C_Nusa_Penida.jpg/1280px-Kelingking_Beach%2C_Nusa_Penida.jpg',
    rating: 4.9,
    reviewCount: 3820,
    price: 'Mulai Rp 25.000',
    description: 'Tebing berbentuk T-Rex yang menghadap laut biru menjadi panorama khas Pantai Kelingking. Nikmati pemandangan dari atas tebing dan tetap ikuti petunjuk keselamatan setempat.',
    openingHours: '24 jam',
    facilities: ['Area parkir', 'Warung', 'Toilet', 'Spot foto'],
    photoCredit: 'Shrigusti',
    photoLicense: 'CC BY-SA 4.0',
    photoPageUrl: 'https://commons.wikimedia.org/wiki/File:Kelingking_Beach,_Nusa_Penida.jpg',
    licenseUrl: 'https://creativecommons.org/licenses/by-sa/4.0/',
    popularity: 100,
  ),
  Destination(
    id: 'raja-ampat',
    name: 'Raja Ampat',
    location: 'Papua Barat Daya',
    category: 'Pantai',
    imageUrl: 'https://thumb.wikimedia.org/wikipedia/commons/thumb/a/a7/Pulau_Piaynemo%2C_Raja_Ampat.jpg/1280px-Pulau_Piaynemo%2C_Raja_Ampat.jpg',
    rating: 4.9,
    reviewCount: 1460,
    price: 'Sesuai paket wisata',
    description: 'Gugusan pulau karst, laguna jernih, dan kekayaan laut Raja Ampat menawarkan pengalaman bahari yang istimewa. Piaynemo adalah salah satu titik pandang paling terkenal di kawasan ini.',
    openingHours: 'Sesuai jadwal tur',
    facilities: ['Homestay', 'Dermaga', 'Pemandu lokal', 'Snorkeling'],
    photoCredit: 'Rizalubun',
    photoLicense: 'CC BY-SA 4.0',
    photoPageUrl: 'https://commons.wikimedia.org/wiki/File:Pulau_Piaynemo,_Raja_Ampat.jpg',
    licenseUrl: 'https://creativecommons.org/licenses/by-sa/4.0/',
    popularity: 98,
  ),
  Destination(
    id: 'bromo',
    name: 'Taman Nasional Bromo Tengger Semeru',
    location: 'Jawa Timur',
    category: 'Gunung',
    imageUrl: 'https://thumb.wikimedia.org/wikipedia/commons/thumb/6/63/Mount_Bromo%2C_Java%2C_Indonesia%2C_20220820_0611_9485.jpg/1280px-Mount_Bromo%2C_Java%2C_Indonesia%2C_20220820_0611_9485.jpg',
    rating: 4.8,
    reviewCount: 5120,
    price: 'Mulai Rp 29.000',
    description: 'Lautan pasir, kawah aktif, dan matahari terbit di balik pegunungan membuat Taman Nasional Bromo Tengger Semeru selalu memikat. Periksa kondisi cuaca dan aturan kunjungan sebelum berangkat.',
    openingHours: '24 jam',
    facilities: ['Jeep wisata', 'Pusat informasi', 'Toilet', 'Penginapan'],
    photoCredit: 'Jakub Hałun',
    photoLicense: 'CC BY-SA 4.0',
    photoPageUrl: 'https://commons.wikimedia.org/wiki/File:Mount_Bromo,_Java,_Indonesia,_20220820_0611_9485.jpg',
    licenseUrl: 'https://creativecommons.org/licenses/by-sa/4.0/',
    popularity: 99,
  ),
  Destination(
    id: 'borobudur',
    name: 'Candi Borobudur',
    location: 'Magelang, Jawa Tengah',
    category: 'Budaya',
    imageUrl: 'https://thumb.wikimedia.org/wikipedia/commons/thumb/8/8c/Borobudur-Nothwest-view.jpg/1280px-Borobudur-Nothwest-view.jpg',
    rating: 4.8,
    reviewCount: 4280,
    price: 'Sesuai jenis tiket',
    description: 'Candi Buddha terbesar di dunia ini tersusun atas relief batu yang menggambarkan perjalanan spiritual dan sejarah panjang Nusantara. Ikuti ketentuan tiket dan kunjungan yang berlaku.',
    openingHours: 'Sesuai jadwal kunjungan',
    facilities: ['Museum', 'Pemandu', 'Area parkir', 'Pusat oleh-oleh'],
    photoCredit: 'Gunawan Kartapranata',
    photoLicense: 'Public domain',
    photoPageUrl:
        'https://commons.wikimedia.org/wiki/File:Borobudur-Nothwest-view.jpg',
    licenseUrl: 'https://commons.wikimedia.org/wiki/Commons:Licensing',
    popularity: 97,
  ),
  Destination(
    id: 'komodo',
    name: 'Taman Nasional Komodo',
    location: 'Nusa Tenggara Timur',
    category: 'Alam',
    imageUrl: 'https://thumb.wikimedia.org/wikipedia/commons/thumb/7/7b/Padar_Island%2C_Komodo_National_Park%2C_Indonesia%2C_20250822_0929_2659.jpg/1280px-Padar_Island%2C_Komodo_National_Park%2C_Indonesia%2C_20250822_0929_2659.jpg',
    rating: 4.9,
    reviewCount: 2050,
    price: 'Sesuai paket wisata',
    description: 'Kawasan taman nasional ini memadukan perbukitan Pulau Padar, pantai, dan habitat komodo. Jelajahi bersama pemandu resmi dan patuhi aturan konservasi.',
    openingHours: 'Sesuai jadwal tur',
    facilities: ['Pemandu resmi', 'Dermaga', 'Tur perahu', 'Pusat informasi'],
    photoCredit: 'Jakub Hałun',
    photoLicense: 'CC BY 4.0',
    photoPageUrl: 'https://commons.wikimedia.org/wiki/File:Padar_Island,_Komodo_National_Park,_Indonesia,_20250822_0929_2659.jpg',
    licenseUrl: 'https://creativecommons.org/licenses/by/4.0/',
    popularity: 95,
  ),
  Destination(
    id: 'situ-patenggang',
    name: 'Situ Patenggang',
    location: 'Ciwidey, Bandung',
    category: 'Alam',
    imageUrl: 'https://thumb.wikimedia.org/wikipedia/commons/thumb/0/0d/Boats_at_Situ_Patenggang_Lake%2C_2014-08-21.jpg/1280px-Boats_at_Situ_Patenggang_Lake%2C_2014-08-21.jpg',
    rating: 4.6,
    reviewCount: 1180,
    price: 'Mulai Rp 25.000',
    description: 'Danau di dataran tinggi Ciwidey ini dikelilingi kebun teh dan perbukitan. Pengunjung dapat menikmati suasana tenang atau menyusuri danau dengan perahu.',
    openingHours: '08.00–17.00',
    facilities: ['Perahu', 'Kafe', 'Area parkir', 'Toilet'],
    photoCredit: 'Crisco 1492',
    photoLicense: 'CC BY-SA 4.0',
    photoPageUrl: 'https://commons.wikimedia.org/wiki/File:Boats_at_Situ_Patenggang_Lake,_2014-08-21.jpg',
    licenseUrl: 'https://creativecommons.org/licenses/by-sa/4.0/',
    popularity: 80,
  ),
  Destination(
    id: 'curug-cimahi',
    name: 'Curug Cimahi',
    location: 'Bandung Barat, Jawa Barat',
    category: 'Air Terjun',
    imageUrl: 'https://thumb.wikimedia.org/wikipedia/commons/thumb/3/36/Curug_Cimahi%2C_25-04-2015.jpg/1280px-Curug_Cimahi%2C_25-04-2015.jpg',
    rating: 4.5,
    reviewCount: 920,
    price: 'Sesuai tiket',
    description: 'Air terjun yang menjulang di kawasan Lembang ini memiliki jalur pandang yang dikelilingi hutan tropis. Kenakan alas kaki yang nyaman untuk menuruni anak tangga.',
    openingHours: '08.00–17.00',
    facilities: ['Area parkir', 'Warung', 'Toilet', 'Gazebo'],
    photoCredit: 'Husni Mubarok',
    photoLicense: 'CC BY-SA 2.0',
    photoPageUrl:
        'https://commons.wikimedia.org/wiki/File:Curug_Cimahi,_25-04-2015.jpg',
    licenseUrl: 'https://creativecommons.org/licenses/by-sa/2.0/',
    popularity: 76,
  ),
  Destination(
    id: 'pantai-pink',
    name: 'Pantai Pink',
    location: 'Lombok Timur, Nusa Tenggara Barat',
    category: 'Pantai',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/8/82/Pantai_Pink_yang_menabjubkan.jpg',
    rating: 4.7,
    reviewCount: 1640,
    price: 'Sesuai paket wisata',
    description: 'Pantai berpasir merah muda di Lombok Timur ini dikenal dengan air laut yang jernih dan bukit-bukit di sekitarnya. Kondisi warna pasir dapat berbeda tergantung cahaya dan cuaca.',
    openingHours: 'Sesuai jadwal lokal',
    facilities: ['Perahu wisata', 'Pemandu lokal', 'Warung sederhana'],
    photoCredit: 'Astri nina sanderiana',
    photoLicense: 'CC BY-SA 4.0',
    photoPageUrl: 'https://commons.wikimedia.org/wiki/File:Pantai_Pink_yang_menabjubkan.jpg',
    licenseUrl: 'https://creativecommons.org/licenses/by-sa/4.0/',
    popularity: 86,
  ),
  Destination(
    id: 'danau-toba',
    name: 'Danau Toba',
    location: 'Sumatera Utara',
    category: 'Alam',
    imageUrl: 'https://thumb.wikimedia.org/wikipedia/commons/thumb/b/b5/Lake_Toba_from_Simalem%2C_North_Sumatra.jpg/1280px-Lake_Toba_from_Simalem%2C_North_Sumatra.jpg',
    rating: 4.8,
    reviewCount: 3210,
    price: 'Gratis, biaya wisata terpisah',
    description: 'Danau vulkanik yang luas ini menawarkan panorama perbukitan, udara sejuk, serta budaya Batak yang kaya. Pulau Samosir menjadi salah satu tempat favorit untuk menjelajah.',
    openingHours: '24 jam',
    facilities: ['Penginapan', 'Kapal feri', 'Restoran', 'Pemandu lokal'],
    photoCredit: 'Chapsorini',
    photoLicense: 'CC BY-SA 4.0',
    photoPageUrl: 'https://commons.wikimedia.org/wiki/File:Lake_Toba_from_Simalem,_North_Sumatra.jpg',
    licenseUrl: 'https://creativecommons.org/licenses/by-sa/4.0/',
    popularity: 92,
  ),
  Destination(
    id: 'malioboro',
    name: 'Malioboro',
    location: 'Yogyakarta',
    category: 'Budaya',
    imageUrl: 'https://thumb.wikimedia.org/wikipedia/commons/thumb/7/77/Malioboro_di_Waktu_Senja-1.jpg/1280px-Malioboro_di_Waktu_Senja-1.jpg',
    rating: 4.6,
    reviewCount: 2850,
    price: 'Gratis',
    description: 'Jalan ikonik di pusat Yogyakarta yang ramai dengan kuliner, kerajinan, dan suasana kota. Waktu senja menjadi momen menarik untuk berjalan santai dan menikmati suasananya.',
    openingHours: '24 jam',
    facilities: ['Transportasi umum', 'Area pejalan kaki', 'Kuliner', 'Toilet'],
    photoCredit: 'Indonesiagood',
    photoLicense: 'CC BY 4.0',
    photoPageUrl: 'https://commons.wikimedia.org/wiki/File:Malioboro_di_Waktu_Senja-1.jpg',
    licenseUrl: 'https://creativecommons.org/licenses/by/4.0/',
    popularity: 91,
  ),
  Destination(
    id: 'nusa-penida',
    name: 'Nusa Penida',
    location: 'Klungkung, Bali',
    category: 'Pantai',
    imageUrl: 'https://thumb.wikimedia.org/wikipedia/commons/thumb/4/49/Diamond_Beach_in_Nusa_Penida%2C_Bali.jpg/1280px-Diamond_Beach_in_Nusa_Penida%2C_Bali.jpg',
    rating: 4.8,
    reviewCount: 3560,
    price: 'Sesuai paket wisata',
    description: 'Pulau di tenggara Bali ini menyimpan pantai, tebing, dan teluk dengan pemandangan yang beragam. Diamond Beach menjadi salah satu panorama yang paling dikenal.',
    openingHours: 'Sesuai jadwal tur',
    facilities: ['Dermaga', 'Pemandu lokal', 'Area parkir', 'Warung'],
    photoCredit: 'Stryn',
    photoLicense: 'CC BY-SA 4.0',
    photoPageUrl: 'https://commons.wikimedia.org/wiki/File:Diamond_Beach_in_Nusa_Penida,_Bali.jpg',
    licenseUrl: 'https://creativecommons.org/licenses/by-sa/4.0/',
    popularity: 94,
  ),
];

const List<String> _categories = [
  'Semua',
  'Pantai',
  'Gunung',
  'Alam',
  'Budaya',
  'Air Terjun',
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  final Set<String> _favoriteIds = {};
  int _selectedTab = 0;
  String _selectedCategory = 'Semua';
  String _sortMode = 'popularity';
  String _query = '';
  bool _isGrid = true;

  List<Destination> get _filteredDestinations {
    final normalizedQuery = _query.trim().toLowerCase();
    final results = _destinations.where((destination) {
      final matchesCategory =
          _selectedCategory == 'Semua' ||
          destination.category == _selectedCategory;
      final matchesQuery =
          normalizedQuery.isEmpty ||
          destination.name.toLowerCase().contains(normalizedQuery) ||
          destination.location.toLowerCase().contains(normalizedQuery) ||
          destination.category.toLowerCase().contains(normalizedQuery);
      return matchesCategory && matchesQuery;
    }).toList();

    if (_sortMode == 'rating') {
      results.sort((a, b) => b.rating.compareTo(a.rating));
    } else {
      results.sort((a, b) => b.popularity.compareTo(a.popularity));
    }
    return results;
  }

  List<Destination> get _favoriteDestinations => _destinations
      .where((destination) => _favoriteIds.contains(destination.id))
      .toList();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _updateQuery(String value) {
    setState(() => _query = value);
  }

  void _selectTab(int index) {
    setState(() {
      _selectedTab = index;
      if (index == 1) _selectedCategory = 'Semua';
    });
  }

  void _toggleFavorite(Destination destination) {
    setState(() {
      if (!_favoriteIds.add(destination.id)) {
        _favoriteIds.remove(destination.id);
      }
    });
  }

  void _openDestination(Destination destination) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) => DestinationDetailPage(
          destination: destination,
          isFavorite: _favoriteIds.contains(destination.id),
          onToggleFavorite: () => _toggleFavorite(destination),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _background,
      body: SafeArea(
        child: IndexedStack(
          index: _selectedTab,
          children: [_homeTab(), _exploreTab(), _favoritesTab(), _profileTab()],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        height: 72,
        selectedIndex: _selectedTab,
        onDestinationSelected: _selectTab,
        backgroundColor: Colors.white,
        indicatorColor: _softPink,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        destinations: const [
          NavigationDestination(
            icon: Icon(shadcn.LucideIcons.house),
            selectedIcon: Icon(shadcn.LucideIcons.house, color: _primaryPink),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(shadcn.LucideIcons.compass),
            selectedIcon: Icon(shadcn.LucideIcons.compass, color: _primaryPink),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(shadcn.LucideIcons.heart),
            selectedIcon: Icon(shadcn.LucideIcons.heart, color: _primaryPink),
            label: 'Favorite',
          ),
          NavigationDestination(
            icon: Icon(shadcn.LucideIcons.user),
            selectedIcon: Icon(shadcn.LucideIcons.user, color: _primaryPink),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _pageFrame(Widget child) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1180),
        child: child,
      ),
    );
  }

  Widget _homeTab() {
    final results = _filteredDestinations;
    return _pageFrame(
      SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _homeHeader(),
            const SizedBox(height: 22),
            _searchField(),
            const SizedBox(height: 20),
            _heroCard(),
            const SizedBox(height: 28),
            _sectionHeading(
              'Explore by category',
              'Choose a mood for your next trip.',
            ),
            const SizedBox(height: 14),
            _categorySelector(),
            const SizedBox(height: 28),
            _sectionHeading(
              'Popular Destinations',
              'Explore the most beautiful places.',
              actionLabel: 'See all',
              onAction: () => _selectTab(1),
            ),
            const SizedBox(height: 14),
            if (results.isEmpty)
              _emptyResults()
            else
              _destinationGrid(results.take(6).toList()),
            if (results.length > 6) ...[
              const SizedBox(height: 28),
              _sectionHeading(
                'Recommended for you',
                'A little inspiration for your next escape.',
              ),
              const SizedBox(height: 14),
              _recommendedList(results.skip(6).take(6).toList()),
            ],
          ],
        ),
      ),
    );
  }

  Widget _homeHeader() {
    return Row(
      children: [
        Container(
          width: 46,
          height: 46,
          decoration: const BoxDecoration(
            color: _softPink,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            shadcn.LucideIcons.compass,
            color: _primaryPink,
            size: 23,
          ),
        ),
        const SizedBox(width: 12),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, Traveler!',
                style: TextStyle(
                  color: _primaryText,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 3),
              Text(
                'Where would you like to explore?',
                style: TextStyle(color: _secondaryText, fontSize: 12),
              ),
            ],
          ),
        ),
        IconButton(
          tooltip: 'Profil',
          onPressed: () => _selectTab(3),
          icon: const Icon(shadcn.LucideIcons.user, color: _primaryText),
        ),
      ],
    );
  }

  Widget _searchField() {
    return TextField(
      controller: _searchController,
      onChanged: _updateQuery,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: 'Search your dream destination...',
        hintStyle: const TextStyle(color: _secondaryText, fontSize: 13),
        prefixIcon: const Icon(shadcn.LucideIcons.search, size: 20),
        suffixIcon: IconButton(
          tooltip: 'Filter kategori',
          onPressed: () => _showCategorySheet(),
          icon: const Icon(shadcn.LucideIcons.slidersHorizontal, size: 19),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(vertical: 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: _border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: _border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: _primaryPink),
        ),
      ),
    );
  }

  Widget _heroCard() {
    final hero = _destinations[1];
    return ClipRRect(
      borderRadius: BorderRadius.circular(26),
      child: SizedBox(
        height: 260,
        width: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: [
            DestinationImage(url: hero.imageUrl, fit: BoxFit.cover),
            const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    Color(0x990F0B10),
                    Color(0x661A1020),
                    Color(0x08000000),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 11,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      'YOUR NEXT ESCAPE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        letterSpacing: 1.1,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Explore the Beauty\nof Indonesia',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      height: 1.15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Discover beautiful places, create wonderful memories.',
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                  const SizedBox(height: 16),
                  shadcn.PrimaryButton(
                    onPressed: () => _openDestination(hero),
                    leading: const Icon(shadcn.LucideIcons.compass, size: 17),
                    child: const Text('Explore now'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sectionHeading(
    String title,
    String subtitle, {
    String? actionLabel,
    VoidCallback? onAction,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w800,
                  color: _primaryText,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 12, color: _secondaryText),
              ),
            ],
          ),
        ),
        if (actionLabel != null)
          TextButton(
            onPressed: onAction,
            child: Text(
              actionLabel,
              style: const TextStyle(
                color: _primaryPink,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
      ],
    );
  }

  Widget _categorySelector() {
    const icons = <String, IconData>{
      'Semua': shadcn.LucideIcons.sparkles,
      'Pantai': shadcn.LucideIcons.waves,
      'Gunung': shadcn.LucideIcons.mountain,
      'Alam': shadcn.LucideIcons.treePalm,
      'Budaya': shadcn.LucideIcons.landmark,
      'Air Terjun': shadcn.LucideIcons.droplets,
    };

    return SizedBox(
      height: 44,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final category = _categories[index];
          final selected = category == _selectedCategory;
          return ChoiceChip(
            avatar: Icon(
              icons[category],
              size: 16,
              color: selected ? Colors.white : _primaryPink,
            ),
            label: Text(category),
            selected: selected,
            onSelected: (value) => setState(() {
              _selectedCategory = category;
            }),
            labelStyle: TextStyle(
              color: selected ? Colors.white : _primaryText,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            selectedColor: _primaryPink,
            backgroundColor: Colors.white,
            side: BorderSide(color: selected ? _primaryPink : _border),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            showCheckmark: false,
          );
        },
      ),
    );
  }

  Widget _destinationGrid(List<Destination> items) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final columns = width >= 980
            ? 4
            : width >= 620
            ? 3
            : 2;
        return GridView.builder(
          itemCount: items.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columns,
            crossAxisSpacing: 14,
            mainAxisSpacing: 14,
            childAspectRatio: width < 360 ? 0.73 : 0.79,
          ),
          itemBuilder: (context, index) => _destinationCard(items[index]),
        );
      },
    );
  }

  Widget _destinationCard(Destination destination) {
    final favorite = _favoriteIds.contains(destination.id);
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(21),
      child: InkWell(
        borderRadius: BorderRadius.circular(21),
        onTap: () => _openDestination(destination),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21),
            border: Border.all(color: _border),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    DestinationImage(url: destination.imageUrl),
                    Positioned(
                      top: 9,
                      right: 9,
                      child: _favoriteButton(destination, favorite),
                    ),
                    Positioned(
                      left: 9,
                      bottom: 9,
                      child: _ratingBadge(destination.rating),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(11, 9, 11, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        destination.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: _primaryText,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Icon(
                            shadcn.LucideIcons.mapPin,
                            color: _primaryPink,
                            size: 13,
                          ),
                          const SizedBox(width: 4),
                          Expanded(
                            child: Text(
                              destination.location,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: _secondaryText,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        destination.price,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: _darkPink,
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
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
    );
  }

  Widget _favoriteButton(Destination destination, bool favorite) {
    return Material(
      color: Colors.white.withValues(alpha: 0.94),
      shape: const CircleBorder(),
      child: IconButton(
        tooltip: favorite ? 'Hapus dari favorit' : 'Simpan ke favorit',
        visualDensity: VisualDensity.compact,
        onPressed: () => _toggleFavorite(destination),
        icon: Icon(
          favorite ? Icons.favorite : Icons.favorite_border,
          color: favorite ? _primaryPink : _primaryText,
          size: 18,
        ),
      ),
    );
  }

  Widget _ratingBadge(double rating) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.95),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(shadcn.LucideIcons.star, color: _ratingGold, size: 13),
          const SizedBox(width: 4),
          Text(
            rating.toStringAsFixed(1),
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              color: _primaryText,
            ),
          ),
        ],
      ),
    );
  }

  Widget _recommendedList(List<Destination> items) {
    if (items.isEmpty) return _emptyResults();
    return SizedBox(
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final destination = items[index];
          return SizedBox(
            width: 280,
            child: Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(19),
              child: InkWell(
                borderRadius: BorderRadius.circular(19),
                onTap: () => _openDestination(destination),
                child: Container(
                  padding: const EdgeInsets.all(9),
                  decoration: BoxDecoration(
                    border: Border.all(color: _border),
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(13),
                        child: SizedBox(
                          width: 92,
                          height: double.infinity,
                          child: DestinationImage(url: destination.imageUrl),
                        ),
                      ),
                      const SizedBox(width: 11),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              destination.name,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: _primaryText,
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              destination.location,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: _secondaryText,
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Row(
                              children: [
                                const Icon(
                                  shadcn.LucideIcons.star,
                                  color: _ratingGold,
                                  size: 13,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  destination.rating.toStringAsFixed(1),
                                  style: const TextStyle(
                                    color: _primaryText,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _exploreTab() {
    final results = _filteredDestinations;
    return _pageFrame(
      SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sectionHeading(
              'Explore',
              'Find a place that feels like your next story.',
            ),
            const SizedBox(height: 20),
            _searchField(),
            const SizedBox(height: 16),
            _categorySelector(),
            const SizedBox(height: 18),
            _exploreToolbar(results.length),
            const SizedBox(height: 14),
            if (results.isEmpty)
              _emptyResults()
            else if (_isGrid)
              _destinationGrid(results)
            else
              _destinationList(results),
          ],
        ),
      ),
    );
  }

  Widget _exploreToolbar(int count) {
    return Row(
      children: [
        Expanded(
          child: Text(
            '$count destinations',
            style: const TextStyle(
              color: _secondaryText,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        PopupMenuButton<String>(
          tooltip: 'Urutkan destinasi',
          initialValue: _sortMode,
          onSelected: (value) => setState(() => _sortMode = value),
          itemBuilder: (context) => const [
            PopupMenuItem(value: 'popularity', child: Text('Paling populer')),
            PopupMenuItem(value: 'rating', child: Text('Rating tertinggi')),
          ],
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 9),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: _border),
            ),
            child: Row(
              children: [
                const Icon(shadcn.LucideIcons.slidersHorizontal, size: 15),
                const SizedBox(width: 6),
                Text(
                  _sortMode == 'rating' ? 'Rating' : 'Populer',
                  style: const TextStyle(fontSize: 11),
                ),
                const SizedBox(width: 4),
                const Icon(shadcn.LucideIcons.chevronDown, size: 14),
              ],
            ),
          ),
        ),
        const SizedBox(width: 8),
        _viewModeButton(true),
        const SizedBox(width: 5),
        _viewModeButton(false),
      ],
    );
  }

  Widget _viewModeButton(bool grid) {
    final selected = _isGrid == grid;
    return IconButton(
      tooltip: grid ? 'Tampilan grid' : 'Tampilan list',
      visualDensity: VisualDensity.compact,
      onPressed: () => setState(() => _isGrid = grid),
      style: IconButton.styleFrom(
        backgroundColor: selected ? _softPink : Colors.white,
        foregroundColor: selected ? _primaryPink : _secondaryText,
        side: BorderSide(color: selected ? _rosePink : _border),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      icon: Icon(
        grid ? shadcn.LucideIcons.grid2x2 : shadcn.LucideIcons.list,
        size: 18,
      ),
    );
  }

  Widget _destinationList(List<Destination> items) {
    return Column(
      children: items
          .map(
            (destination) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: _destinationListTile(destination),
            ),
          )
          .toList(),
    );
  }

  Widget _destinationListTile(Destination destination) {
    final favorite = _favoriteIds.contains(destination.id);
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () => _openDestination(destination),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: _border),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: SizedBox(
                  width: 96,
                  height: 96,
                  child: DestinationImage(url: destination.imageUrl),
                ),
              ),
              const SizedBox(width: 13),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      destination.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: _primaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      destination.location,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: _secondaryText,
                        fontSize: 11,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Row(
                      children: [
                        const Icon(
                          shadcn.LucideIcons.star,
                          color: _ratingGold,
                          size: 14,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${destination.rating.toStringAsFixed(1)}  ·  ${destination.price}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: _primaryText,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              _favoriteButton(destination, favorite),
            ],
          ),
        ),
      ),
    );
  }

  Widget _favoritesTab() {
    final favorites = _favoriteDestinations;
    return _pageFrame(
      SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sectionHeading(
              'Your Favorites',
              'Places you would love to visit.',
            ),
            const SizedBox(height: 20),
            if (favorites.isEmpty)
              _emptyFavorites()
            else
              _destinationGrid(favorites),
          ],
        ),
      ),
    );
  }

  Widget _emptyFavorites() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 35),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: _border),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          SizedBox(height: 150, child: const _EmptyFavoriteIllustration()),
          const SizedBox(height: 10),
          const Text(
            'No favorites yet',
            style: TextStyle(
              color: _primaryText,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Tap the heart on a destination to save it here.',
            textAlign: TextAlign.center,
            style: TextStyle(color: _secondaryText, fontSize: 13),
          ),
          const SizedBox(height: 18),
          FilledButton.icon(
            onPressed: () => _selectTab(1),
            icon: const Icon(shadcn.LucideIcons.compass, size: 18),
            label: const Text('Explore destinations'),
          ),
        ],
      ),
    );
  }

  Widget _emptyResults() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: _border),
        borderRadius: BorderRadius.circular(22),
      ),
      child: const Column(
        children: [
          Icon(shadcn.LucideIcons.search, size: 34, color: _rosePink),
          SizedBox(height: 10),
          Text(
            'No destinations found',
            style: TextStyle(color: _primaryText, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 4),
          Text(
            'Try a different name, location, or category.',
            textAlign: TextAlign.center,
            style: TextStyle(color: _secondaryText, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _profileTab() {
    return _pageFrame(
      SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 28, 20, 32),
        child: Column(
          children: [
            Container(
              width: 88,
              height: 88,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [_primaryPink, _rosePink],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Icon(
                shadcn.LucideIcons.user,
                color: Colors.white,
                size: 42,
              ),
            ),
            const SizedBox(height: 14),
            const Text(
              'Travel Lover',
              style: TextStyle(
                color: _primaryText,
                fontSize: 21,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'traveler@example.com',
              style: TextStyle(color: _secondaryText, fontSize: 13),
            ),
            const SizedBox(height: 26),
            _profileMenu(
              icon: shadcn.LucideIcons.heart,
              title: 'My Favorites',
              subtitle: '${_favoriteIds.length} saved destinations',
              onTap: () => _selectTab(2),
            ),
            _profileMenu(
              icon: shadcn.LucideIcons.info,
              title: 'About Pink Travel',
              subtitle: 'Discover places, create memories',
              onTap: () => _showInfoDialog(
                'About Pink Travel',
                'Pink Travel helps you find inspiration for exploring Indonesia. Destination details are sample content for this travel discovery demo.',
              ),
            ),
            _profileMenu(
              icon: shadcn.LucideIcons.settings,
              title: 'Settings',
              subtitle: 'App preferences',
              onTap: () => _showInfoDialog(
                'Settings',
                'This demo does not connect to an account or backend. Your favorites are kept while the app is running.',
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              'Pink Travel  •  Version 1.0.0',
              style: TextStyle(color: _secondaryText, fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }

  Widget _profileMenu({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
            side: const BorderSide(color: _border),
          ),
          leading: Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: _lightPink,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Icon(icon, color: _primaryPink, size: 20),
          ),
          title: Text(
            title,
            style: const TextStyle(
              color: _primaryText,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(color: _secondaryText, fontSize: 11),
          ),
          trailing: const Icon(
            shadcn.LucideIcons.chevronRight,
            color: _secondaryText,
            size: 18,
          ),
          onTap: onTap,
        ),
      ),
    );
  }

  void _showCategorySheet() {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.white,
      builder: (context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 28),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Choose a category',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                  color: _primaryText,
                ),
              ),
              const SizedBox(height: 14),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: _categories.map((category) {
                  return ChoiceChip(
                    label: Text(category),
                    selected: category == _selectedCategory,
                    onSelected: (selected) {
                      setState(() => _selectedCategory = category);
                      Navigator.pop(context);
                    },
                    selectedColor: _softPink,
                    labelStyle: const TextStyle(color: _darkPink),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showInfoDialog(String title, String message) {
    showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}

class _EmptyFavoriteIllustration extends StatelessWidget {
  const _EmptyFavoriteIllustration();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 118,
        height: 118,
        decoration: const BoxDecoration(
          color: _lightPink,
          shape: BoxShape.circle,
        ),
        child: const Icon(shadcn.LucideIcons.heart, color: _rosePink, size: 54),
      ),
    );
  }
}

class DestinationImage extends StatelessWidget {
  const DestinationImage({
    super.key,
    required this.url,
    this.fit = BoxFit.cover,
  });

  final String url;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: fit,
      loadingBuilder: (context, child, progress) {
        if (progress == null) return child;
        return Container(
          color: _lightPink,
          alignment: Alignment.center,
          child: const SizedBox(
            width: 22,
            height: 22,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: _primaryPink,
            ),
          ),
        );
      },
      errorBuilder: (context, error, stackTrace) => Container(
        color: _lightPink,
        alignment: Alignment.center,
        child: const Icon(shadcn.LucideIcons.image, color: _rosePink, size: 36),
      ),
    );
  }
}

class DestinationDetailPage extends StatefulWidget {
  const DestinationDetailPage({
    super.key,
    required this.destination,
    required this.isFavorite,
    required this.onToggleFavorite,
  });

  final Destination destination;
  final bool isFavorite;
  final VoidCallback onToggleFavorite;

  @override
  State<DestinationDetailPage> createState() => _DestinationDetailPageState();
}

class _DestinationDetailPageState extends State<DestinationDetailPage> {
  late bool _isFavorite;

  @override
  void initState() {
    super.initState();
    _isFavorite = widget.isFavorite;
  }

  void _toggleFavorite() {
    setState(() => _isFavorite = !_isFavorite);
    widget.onToggleFavorite();
  }

  @override
  Widget build(BuildContext context) {
    final destination = widget.destination;
    return Scaffold(
      backgroundColor: _background,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 330,
            pinned: true,
            backgroundColor: _primaryPink,
            foregroundColor: Colors.white,
            leading: IconButton(
              tooltip: 'Kembali',
              onPressed: () => Navigator.maybePop(context),
              icon: const Icon(shadcn.LucideIcons.arrowLeft),
            ),
            actions: [
              IconButton(
                tooltip: _isFavorite
                    ? 'Hapus dari favorit'
                    : 'Simpan ke favorit',
                onPressed: _toggleFavorite,
                icon: Icon(
                  _isFavorite ? Icons.favorite : Icons.favorite_border,
                ),
              ),
              IconButton(
                tooltip: 'Salin tautan destinasi',
                onPressed: () async {
                  await Clipboard.setData(
                    ClipboardData(
                      text:
                          '${destination.name} — ${destination.location}\n${destination.photoPageUrl}',
                    ),
                  );
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Tautan disalin')),
                    );
                  }
                },
                icon: const Icon(shadcn.LucideIcons.share),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                destination.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  shadows: [Shadow(color: Colors.black54, blurRadius: 8)],
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  DestinationImage(url: destination.imageUrl),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Color(0x99000000)],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 900),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 22, 20, 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        destination.name,
                        style: const TextStyle(
                          color: _primaryText,
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 9),
                      Row(
                        children: [
                          const Icon(
                            shadcn.LucideIcons.mapPin,
                            color: _primaryPink,
                            size: 18,
                          ),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Text(
                              destination.location,
                              style: const TextStyle(
                                color: _secondaryText,
                                fontSize: 13,
                              ),
                            ),
                          ),
                          const Icon(
                            shadcn.LucideIcons.star,
                            color: _ratingGold,
                            size: 17,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            destination.rating.toStringAsFixed(1),
                            style: const TextStyle(
                              color: _primaryText,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            ' (${destination.reviewCount})',
                            style: const TextStyle(
                              color: _secondaryText,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: _detailInfoCard(
                              shadcn.LucideIcons.ticket,
                              'Ticket price',
                              destination.price,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _detailInfoCard(
                              shadcn.LucideIcons.clock,
                              'Opening hours',
                              destination.openingHours,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      _detailHeading('About this place'),
                      const SizedBox(height: 9),
                      Text(
                        destination.description,
                        style: const TextStyle(
                          color: _secondaryText,
                          height: 1.7,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 23),
                      _detailHeading('Facilities'),
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: destination.facilities
                            .map(
                              (facility) => Chip(
                                label: Text(facility),
                                backgroundColor: Colors.white,
                                side: const BorderSide(color: _border),
                                labelStyle: const TextStyle(
                                  color: _primaryText,
                                  fontSize: 11,
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      const SizedBox(height: 23),
                      _detailHeading('Photo credits'),
                      const SizedBox(height: 8),
                      Text(
                        'Photo by ${destination.photoCredit} · '
                        '${destination.photoLicense} · Wikimedia Commons',
                        style: const TextStyle(
                          color: _secondaryText,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 5),
                      SelectableText(
                        '${destination.photoPageUrl}\n${destination.licenseUrl}',
                        style: const TextStyle(
                          color: _darkPink,
                          fontSize: 10,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: _border)),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Ticket price',
                      style: TextStyle(color: _secondaryText, fontSize: 11),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      destination.price,
                      style: const TextStyle(
                        color: _darkPink,
                        fontWeight: FontWeight.w800,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              shadcn.PrimaryButton(
                onPressed: () => _showPlanDialog(context),
                leading: const Icon(shadcn.LucideIcons.calendarDays, size: 17),
                child: const Text('Plan your visit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _detailHeading(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: _primaryText,
        fontSize: 17,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _detailInfoCard(IconData icon, String label, String value) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: _border),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: _primaryPink, size: 20),
          const SizedBox(height: 9),
          Text(
            label,
            style: const TextStyle(color: _secondaryText, fontSize: 10),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: _primaryText,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  void _showPlanDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(shadcn.LucideIcons.calendarDays, color: _primaryPink),
        title: const Text('Plan your visit'),
        content: Text(
          'Check local opening hours and ticket availability before visiting ${widget.destination.name}.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Got it'),
          ),
        ],
      ),
    );
  }
}
