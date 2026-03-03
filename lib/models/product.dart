class Product {
  final String _id;
  final String _name;
  final String _image;
  final double _value;
  final int _installments;
  final bool _isShippingFree;
  final String _description;
  final double _evaluation;
  Product({
    required String id,
    required String name,
    required String image,
    double value = 599.99,
    required int installments,
    bool isShippingFree = false,
    String description = 'Disponível em 6 cores',
    required double evaluation,
  }) : _id = id,
       _name = name,
       _image = image,
       _value = value,
       _installments = installments,
       _isShippingFree = isShippingFree,
       _description = description,
       _evaluation = evaluation;

  String get id => _id;
  String get name => _name;
  String get image => _image;
  double get value => _value;
  int get installments => _installments;
  bool get isShippingFree => _isShippingFree;
  String get description => _description;
  double get evaluation => _evaluation;
}
