import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  TextEditingController controller;
  String labelText;
  String hintText;
  TextInputType keyboardType;
  String errortext;
  bool isPassword;

  CustomTextFormField({
    required this.controller,
    required this.labelText,
    required this.errortext,
    this.hintText = '',
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide:
                BorderSide(width: 2, color: Theme.of(context).primaryColor)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(width: 2, color: Colors.grey)),
        labelText: labelText,
        hintText: hintText,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errortext;
        }
      },
    );
  }
}

Widget vSize(double size) {
  return SizedBox(height: size);
}

Widget hSize(double size) {
  return SizedBox(width: size);
}

class ModalHelper {
  String? title;
  String? images;
  String? location;
  Widget? rating;
  Widget? distance;

  ModalHelper(
      {required this.title,
      required this.location,
      this.distance,
      this.rating,
      required this.images});
}

class Bestforyou {
  String? title;
  String? images;
  String? price;
  Widget? rating;

  Bestforyou(
      {required this.title,
      required this.price,
      this.rating,
      required this.images});
}

class Amenities {
  String? amenity;
  Widget? icon;

  Amenities({required this.amenity, required this.icon});
}
