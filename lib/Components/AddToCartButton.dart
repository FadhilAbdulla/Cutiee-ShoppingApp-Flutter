import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddToCartButton extends StatefulWidget {
  const AddToCartButton({super.key});
  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        alignment: Alignment.center,
        child: Container(
          height: 36,
          width: MediaQuery.of(context).size.width - 150,
          padding: EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
              color: Color.fromRGBO(255, 199, 54, 1),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromRGBO(0, 0, 0, 0.4).withOpacity(1),
                  spreadRadius: 0,
                  blurRadius: 2,
                  offset: Offset(2, 2), // changes position of shadow
                ),
              ],
              border: Border.all(width: 0.4, color: Colors.black)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Add To Cart",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.manjari(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.shopping_cart_outlined,
                size: 20,
              )
            ],
          ),
        ));
  }
}
