class ControlItem {
  final String control;
  final String imagePath;

  ControlItem({required this.control, required this.imagePath});
}

final List<ControlItem> controlItems = [
  ControlItem(control: 'Avanzar', imagePath: 'assets/control/Avanzar.png'),
  ControlItem(control: 'Retroceder', imagePath: 'assets/control/Retroceder.png'),
  ControlItem(control: 'Izquierda', imagePath: 'assets/control/Izquierda.png'),
  ControlItem(control: 'Derecha', imagePath: 'assets/control/Derecha.png'),
  // Agrega más controles e imágenes según sea necesario
]; 