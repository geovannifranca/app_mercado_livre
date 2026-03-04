import 'package:app_mercado_livre/models/product.dart';
import 'package:app_mercado_livre/store/home_store.dart';
import 'package:app_mercado_livre/widgets/ml_rating.dart';
import 'package:flutter/material.dart';

class MlCard extends StatefulWidget {
  final Product product;
  final HomeStore homeStore;
  final void Function() onPressed;
  const MlCard({
    super.key,
    required this.product,
    required this.onPressed,
    required this.homeStore,
  });

  @override
  State<MlCard> createState() => _MlCardState();
}

class _MlCardState extends State<MlCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 184,
              width: 142,
              decoration: BoxDecoration(color: Colors.grey[300]),
              child: Image.asset(widget.product.image),
            ),
            SizedBox(width: 8.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.product.name, style: TextStyle(fontSize: 16.8)),
                  Text(
                    'R\$ ${(double.parse(widget.product.id) * widget.product.value).toStringAsFixed(2)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.8,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      text: 'em',
                      children: [
                        TextSpan(
                          style: TextStyle(color: Colors.greenAccent),
                          text:
                              ' ${widget.product.installments}x R\$ ${(widget.product.value / 10).toStringAsFixed(2)} sem juros',
                        ),
                      ],
                    ),
                  ),
                  widget.product.isShippingFree
                      ? Text(
                          'Frete grátis',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.8,
                          ),
                        )
                      : SizedBox(),
                  Text('Disponível em 6 cores'),
                  MlRating(
                    product: widget.product,
                    onRatingChanged: (value) {
                      widget.homeStore.updateProductEvaluation(
                        widget.product,
                        value,
                      );
                    },
                  ),
                  TextButton(
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(EdgeInsets.zero),
                    ),
                    onPressed: widget.onPressed,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Add carrinho',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue,
                        ),
                      ),
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
