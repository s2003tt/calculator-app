import 'package:myapp/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constant/colors.dart';

class CalculateButton extends StatelessWidget{
  const CalculateButton({
    super.key,
  });

@override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context, listen: false).setValue("="),
      child: Container(
        height: 160,
        width: 70,
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1423135445.
        decoration: BoxDecoration(
          color: AppColors.secondary2Color,
          borderRadius: BorderRadius.circular(40)),
        child: const Center(
          child: Text(
            "=",
            style: TextStyle(
              fontSize: 32,
            ),
          ),
        ), 
      ),    
    );
  }
}