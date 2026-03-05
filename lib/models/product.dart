class Product {
  final String _id;
  final String _name;
  final String _image;
  final double _value;
  final int _installments;
  final bool _isShippingFree;
  final String _description;
  final int _evaluation;
  Product({
    required String id,
    required String name,
    required String image,
    double value = 599.99,
    required int installments,
    bool isShippingFree = false,
    String description = 'Disponível em 6 cores',
    int evaluation = 0,
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
  int get evaluation => _evaluation;

  Product copyWith({
    String? id,
    String? name,
    String? image,
    double? value,
    int? installments,
    bool? isShippingFree,
    String? description,
    int? evaluation,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      value: value ?? this.value,
      installments: installments ?? this.installments,
      isShippingFree: isShippingFree ?? this.isShippingFree,
      description: description ?? this.description,
      evaluation: evaluation ?? this.evaluation,
    );
  }
}
