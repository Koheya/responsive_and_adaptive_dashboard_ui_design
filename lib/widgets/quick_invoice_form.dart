import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: "Customer Name", hint: "Type Customer Name")),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                  title: "Customer Email", hint: "Type Customer Email"),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(
                child:
                    TitleTextField(title: "Item Name", hint: "Type Item Name")),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(title: "Item Mount", hint: "USD"),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                backgroundColor: Colors.transparent,
                textColor: Color(0xFF4DB7F2),
                text: "Add More Details",
              ),
            ),
            SizedBox(width: 24),
            Expanded(child: CustomButton(text: "Send Money")),
          ],
        )
      ],
    );
  }
}
