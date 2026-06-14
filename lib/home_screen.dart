import 'package:flutter/material.dart';

const Color kPink = Color(0xFFE8759A);
const Color kLightPink = Color(0xFFFCE4EC);
const Color kDarkPink = Color(0xFFC2185B);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPink,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.local_dining, color: Colors.white, size: 28),
        ),
        title: const Text(
          'Burger Queen',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.account_circle, color: Colors.white, size: 28),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            _RestaurantCard(),
            _EnCeMomentSection(),
            _BurgersSection(),
            _AccompagnementsSection(),
            _BoissonsSection(),
            _DessertsSection(),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────
// Section : Restaurant le plus proche
// ─────────────────────────────────────────────────────────────
class _RestaurantCard extends StatelessWidget {
  const _RestaurantCard();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          color: kLightPink,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: kPink.withOpacity(0.15),
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Row(
                  children: [
                    Icon(Icons.location_on, color: kDarkPink, size: 20),
                    SizedBox(width: 6),
                    Text(
                      'Mon restaurant le plus proche',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                Text(
                  '4 kms',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.shopping_bag_outlined, size: 18),
                label: const Text('Commander'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: kPink,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────
// Section : En ce moment
// ─────────────────────────────────────────────────────────────
class _EnCeMomentSection extends StatelessWidget {
  const _EnCeMomentSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'En ce moment',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  'assets/images/layer-burger.jpg',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.35),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Une petite faim ?',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Venez personnaliser votre burger',
                        style: TextStyle(
                          color: kPink,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────
// Section : Burgers
// ─────────────────────────────────────────────────────────────
class _BurgersSection extends StatelessWidget {
  const _BurgersSection();

  static const List<Map<String, String>> burgers = [
    {
      'title': 'Twins',
      'desc': 'Le burger des jumeaux qui font la paire',
      'image': 'assets/images/twins.jpg',
    },
    {
      'title': 'Big Queen',
      'desc': 'Pour celles qui portent la couronne à la maison',
      'image': 'assets/images/big-queen.jpg',
    },
    {
      'title': 'Egg Bacon',
      'desc': 'Le burger des lèves tôt',
      'image': 'assets/images/egg-bacon-burger.jpg',
    },
    {
      'title': 'Prince',
      'desc': 'Le préféré des futurs rois',
      'image': 'assets/images/prince.jpg',
    },
    {
      'title': 'Cheese',
      'desc': 'Le classique pour les fans de fromage',
      'image': 'assets/images/cheese.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Chaud devant',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const Text(
            'Le meilleur de nos burgers à portée de clic',
            style: TextStyle(fontSize: 13, color: Colors.black54),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 190,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: burgers.length,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final b = burgers[index];
                return _BurgerCard(
                  title: b['title']!,
                  desc: b['desc']!,
                  imagePath: b['image']!,
                );
              },
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _BurgerCard extends StatelessWidget {
  final String title;
  final String desc;
  final String imagePath;

  const _BurgerCard({
    required this.title,
    required this.desc,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: kLightPink,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(14)),
            child: Image.asset(
              imagePath,
              height: 110,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  desc,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Colors.black54,
                    fontStyle: FontStyle.italic,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────
// Section : Accompagnements
// ─────────────────────────────────────────────────────────────
class _AccompagnementsSection extends StatelessWidget {
  const _AccompagnementsSection();

  static const List<Map<String, String>> items = [
    {'title': 'Frites', 'image': 'assets/images/fries.jpg'},
    {'title': 'Frites de patate douce', 'image': 'assets/images/patate-douce.jpg'},
    {'title': 'Poutine', 'image': 'assets/images/poutine.jpg'},
    {'title': 'Potatoes', 'image': 'assets/images/potatoes.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Les accompagnements',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          ...items.map((item) => _AccompagnementRow(
                title: item['title']!,
                imagePath: item['image']!,
              )),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _AccompagnementRow extends StatelessWidget {
  final String title;
  final String imagePath;

  const _AccompagnementRow({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: kLightPink,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.horizontal(left: Radius.circular(14)),
            child: Image.asset(
              imagePath,
              width: 80,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: kDarkPink,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────
// Section : Boissons
// ─────────────────────────────────────────────────────────────
class _BoissonsSection extends StatelessWidget {
  const _BoissonsSection();

  static const List<Map<String, String>> boissons = [
    {'title': 'Le classique', 'image': 'assets/images/classic-cola.jpg'},
    {'title': 'Eau gazeuse', 'image': 'assets/images/sparkling.jpg'},
    {'title': 'A l\'orange', 'image': 'assets/images/orange-soda.jpg'},
    {'title': 'Goût fraise', 'image': 'assets/images/strawberry-soda.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Une petite soif ?',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: kDarkPink,
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 130,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: boissons.length,
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                final b = boissons[index];
                return _BoissonCard(
                  title: b['title']!,
                  imagePath: b['image']!,
                );
              },
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _BoissonCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const _BoissonCard({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Image.asset(
            imagePath,
            width: 110,
            height: 130,
            fit: BoxFit.cover,
          ),
          Container(
            color: kPink.withOpacity(0.65),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────
// Section : Desserts
// ─────────────────────────────────────────────────────────────
class _DessertsSection extends StatelessWidget {
  const _DessertsSection();

  static const List<Map<String, String>> desserts = [
    {'title': 'Glace Oreo', 'image': 'assets/images/oreo-ice.jpg'},
    {'title': 'Crêpe fraise', 'image': 'assets/images/strawberry-waffle.jpg'},
    {'title': 'Donut', 'image': 'assets/images/donut.jpg'},
    {'title': 'Cupcake', 'image': 'assets/images/cupcake.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'La touche sucrée pour finir en beauté',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: kDarkPink,
            ),
          ),
          const SizedBox(height: 12),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: desserts
                .map((d) => _DessertCard(
                      title: d['title']!,
                      imagePath: d['image']!,
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class _DessertCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const _DessertCard({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Image.asset(
            imagePath,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.white.withOpacity(0.85),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              title,
              style: const TextStyle(
                color: kDarkPink,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
