import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          side: BorderSide(color: Color(0xFFF1F1F1), width: 1),
        ),
      ),
      child:  Row(
        children: [
          Text(
            "Monthly",
            style: AppStyles.styleMeduim16(context),
          ),
          const SizedBox(
            width: 16,
          ),
          const Icon(Icons.arrow_drop_down)
        ],
      ),
    );
  }
}
