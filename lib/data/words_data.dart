class WordItem {
  final String word;
  final String imagePath;

  WordItem({required this.word, required this.imagePath});
}

final List<WordItem> wordItems = [
  WordItem(word: 'Hola', imagePath: 'assets/frases/Hola.png'),
  WordItem(word: 'Adios', imagePath: 'assets/frases/Adios.png'),
  // Agrega más frases e imágenes según sea necesario
]; 