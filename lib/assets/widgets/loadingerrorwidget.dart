import 'package:flutter/material.dart';

class LoadingErrorWidget extends StatelessWidget {


  const LoadingErrorWidget();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            color: Colors.grey,
            size: 50,
          ),
          SizedBox(height: 10),

        ],
      ),
    );
  }
}
