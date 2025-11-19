import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toko_sepatu_sejahtera/widgets/left_drawer.dart';
import 'dart:convert';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:toko_sepatu_sejahtera/screens/menu.dart';

class ProductFormPage extends StatefulWidget {
    const ProductFormPage({super.key});

    @override
    State<ProductFormPage> createState() => _ProductFormPageState();
}

class _ProductFormPageState extends State<ProductFormPage> {
    final _formKey = GlobalKey<FormState>();
    String _name = "";
    String _brand = "";
    int _price = 0;
    double _rating = 0.0;
    String _description = "";
    String _category = "sneakers"; // default
    String _thumbnail = "";
    bool _isFeatured = false; // default
    final List<String> _categories = [
      'sneakers',
      'boots',
      'sandals',
      'formal',
      'sports',
      'casual',
      'loafers',
      'heels',
      'flats',
      'slippers',
      'other',
    ];
    @override
    Widget build(BuildContext context) {
        final request = context.watch<CookieRequest>();
        return Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text(
                'Create Product',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
          drawer: LeftDrawer(),
          body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[

                  // === Name ===
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Product Name",
                        labelText: "Product Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _name = value!;
                        });
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(30), 
                      ],
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Product name cannot be empty!";
                        }
                        return null;
                      },
                    ),
                  ),
                  // === Brand ===
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Product Brand",
                        labelText: "Product Brand",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _brand = value!;
                        });
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(30),
                      ],
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Product brand cannot be empty!";
                        }
                        return null;
                      },
                    ),
                  ),
                  // === Price ===
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Product Price",
                        labelText: "Product Price",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(10)
                      ],
                      onChanged: (String? value) {
                        setState(() {
                          _price = int.tryParse(value!) ?? 0;
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Price name cannot be empty!";
                        }
                        if (int.tryParse(value) == null) {
                          return "Price must be a valid number!";
                        }
                        if (int.parse(value) < 0) {
                          return "Price cannot be negative!";
                        }
                        return null;
                      },
                    ),
                  ),
                  // === Rating ===
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Product Rating (0 - 5)",
                        labelText: "Product Rating",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,1}')),
                        // angka, optional 1 koma, dan maksimal 1 digit setelah koma (misal 4.5)
                      ],
                      onChanged: (value) {
                        setState(() {
                          _rating = double.tryParse(value) ?? 0.0;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Rating cannot be empty!";
                        }

                        final parsed = double.tryParse(value);
                        if (parsed == null) {
                          return "Rating must be a valid number!";
                        }

                        if (parsed < 0) {
                          return "Rating cannot be negative!";
                        }

                        if (parsed > 5) {
                          return "Rating cannot be more than 5!";
                        }

                        return null;
                      },
                    ),
                  ),
                  // === Description ===
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText: "Product Description",
                        labelText: "Product Description",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _description = value!;
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Product description cannot be empty!";
                        }
                        return null;
                      },
                    ),
                  ),
                  // === Category ===
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        labelText: "Category",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      initialValue: _category,
                      items: _categories
                          .map((cat) => DropdownMenuItem(
                                value: cat,
                                child: Text(
                                    cat[0].toUpperCase() + cat.substring(1)),
                              ))
                          .toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _category = newValue!;
                        });
                      },
                    ),
                  ),
                  // === Thumbnail URL ===
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Thumbnail URL",
                        labelText: "Thumbnail URL",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _thumbnail = value!;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return null;
                        }

                        final uri = Uri.tryParse(value);

                        // Cek apakah:
                        // - Parsed
                        // - Punya scheme (http/https)
                        // - Punya host (misal domain)
                        if (uri == null || !uri.hasScheme || !uri.hasAuthority) {
                          return "Please enter a valid URL!";
                        }

                        return null;
                      },
                    ),
                  ),
                  // === Is Featured ===
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SwitchListTile(
                      title: const Text("Is Featured"),
                      value: _isFeatured,
                      onChanged: (bool value) {
                        setState(() {
                          _isFeatured = value;
                        });
                      },
                    ),
                  ),
                  // === Tombol Simpan ===
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(Colors.blue),
                        ),
                        onPressed: ()async {
                          if (_formKey.currentState!.validate()) {
                                final response = await request.postJson(
                                  "http://127.0.0.1:8000/create-flutter/",
                                  jsonEncode({
                                    "name": _name,
                                    "brand": _brand,
                                    "price": _price,
                                    "rating":_rating,
                                    "description": _description,
                                    "thumbnail": _thumbnail,
                                    "category": _category,
                                    "is_featured": _isFeatured,
                                  }),
                                );
                                if (context.mounted) {
                                  if (response['status'] == 'success') {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text("News successfully saved!"),
                                    ));
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyHomePage()),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text("Something went wrong, please try again."),
                                    ));
                                  }
                                }
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('Product has been successfully created!'),
                                  content: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Name: $_name'),
                                        Text('Brand: $_brand'),
                                        Text('Price: $_price'), 
                                        Text('Rating: $_rating'),                                      
                                        Text('Description: $_description'),
                                        Text('Category: $_category'),
                                        Text('Thumbnail: $_thumbnail'),
                                        Text(
                                            'Is Featured: ${_isFeatured ? "Yes" : "No"}'),
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                      child: const Text('OK'),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        _formKey.currentState!.reset();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        },
                        child: const Text(
                          "Save Product",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],    
              )
            ),
          ),
        );
    }
}