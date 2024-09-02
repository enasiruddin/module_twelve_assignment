import 'package:flutter/material.dart';
import 'package:module_twelve_assignment/view_model/viewmodel.dart';

Widget desktopLayout(BuildContext context) {
  final ViewModel viewModel = ViewModel();
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  viewModel.model.title,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                ),
                child:  Text(
                  viewModel.model.btnText,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.3,)
            ],
          ),
          const SizedBox(height: 16),
          Text(
            viewModel.model.description,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    ),
  );
}