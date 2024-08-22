import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onpressed,
    this.isLoading = false,
  });
  final void Function() onpressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpressed,
      minWidth: MediaQuery.of(context).size.width,
      height: 45.0,
      color: Colors.cyan[300],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: isLoading
          ? const SizedBox(
              height: 15,
              width: 15,
              child: CircularProgressIndicator(
                color: Colors.black,
                strokeWidth: 2.0,
              ),
            )
          : const Text(
              'Add',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
    );
  }
}
