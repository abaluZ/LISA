import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double cardWidth = (size.width - 72) / 2; // 24 padding * 2 + 12 entre cards
    final double cardHeight = size.height * 0.22;

    return Scaffold(
      backgroundColor: const Color(0xFFE8F0FE),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Header con color y robot
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: size.height * 0.03, horizontal: size.width * 0.05),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFB2CFFF), Color(0xFFE8F0FE)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Lenguaje Inclusivo',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        'De Señas Asistido',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/robotLisa.png',
                        width: 48,
                        height: 48,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.04),
            const Text(
              '¿Qué quieres aprender?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2D3A5A),
              ),
            ),
            SizedBox(height: size.height * 0.04),
            // Opciones
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: _OptionCard(
                          image: 'assets/logoAbecedario.png',
                          label: 'Abecedario',
                          color: const Color(0xFFB2CFFF),
                          width: cardWidth,
                          height: cardHeight,
                          onTap: () {
                            Navigator.pushNamed(context, '/alphabet');
                          },
                        ),
                      ),
                      Flexible(
                        child: _OptionCard(
                          image: 'assets/frasesLogo.png',
                          label: 'Frases',
                          color: const Color(0xFFFFE082),
                          width: cardWidth,
                          height: cardHeight,
                          onTap: () {
                            Navigator.pushNamed(context, '/words');
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _OptionCard(
                        image: 'assets/controlLogo.png',
                        label: 'Control del robot',
                        width: size.width * 0.7,
                        height: cardHeight,
                        color: const Color(0xFFB9F6CA),
                        onTap: () {
                          Navigator.pushNamed(context, '/control');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.06, bottom: size.height * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 48,
                    height: 48,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Los Panzones',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OptionCard extends StatelessWidget {
  final String image;
  final String label;
  final double width;
  final double height;
  final Color color;
  final VoidCallback onTap;

  const _OptionCard({
    required this.image,
    required this.label,
    required this.onTap,
    this.width = 100,
    this.height = 120,
    this.color = const Color(0xFFF3F8FCFF),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                image,
                width: width * 0.7,
                height: height * 0.5,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Center(
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
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