import 'package:flutter/material.dart';
import 'package:toko_sepatu_sejahtera/models/product_entry.dart';
import 'package:intl/intl.dart';

class ProductEntryCard extends StatelessWidget {
  final ProductEntry product;
  final VoidCallback onTap;

  const ProductEntryCard({
    super.key,
    required this.product,
    required this.onTap,
  });

  String _formatPrice(int price) {
    final formatCurrency = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp', decimalDigits: 0);
    return formatCurrency.format(price);
  }

  Widget _buildRatingStars(int rating) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < rating ? Icons.star : Icons.star_border,
          color: Colors.amber,
          size: 14, // Ukuran bintang kecil untuk grid
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(color: Colors.grey.shade300),
          ),
          elevation: 2,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                      // Thumbnail
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                        child: Image.network(
                          'http://localhost:8000/proxy-image/?url=${Uri.encodeComponent(product.thumbnail)}',
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) => Container(
                            height: 150,
                            color: Colors.grey[300],
                            child: const Center(child: Icon(Icons.broken_image)),
                          ),
                        ),
                      ),
                      if (product.isFeatured)
                        Positioned(
                          top: 8, // Jarak dari atas ClipRRect
                          right: 8, // Jarak dari kanan ClipRRect
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                            margin: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              color: Colors.amber, // Warna latar belakang Featured
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: const Text(
                              'Featured',
                              style: TextStyle(
                                color: Colors.white, // Warna teks putih
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                    ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Name
                      Text(
                        product.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),

                      // Rating Bintang
                      _buildRatingStars(product.rating),
                      const SizedBox(height: 4),

                      // Harga Produk
                      Text(
                        _formatPrice(product.price),
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.teal.shade700, // Harga menonjol
                        ),
                      ),
                      const SizedBox(height: 4),

                      // Category
                      Text('Category: ${product.category}'),
                      const SizedBox(height: 6),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
  }
}