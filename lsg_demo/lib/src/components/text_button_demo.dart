import 'package:flutter/material.dart';
import 'package:va_reusable_components/va_reusable_components.dart';

class TextButtonDemo extends StatelessWidget {
  const TextButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Text Button",
          style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonText(
              onPressed: () {},
              label: "Primary",
              leadingIcon: null,
              trailingIcon: null,
              isLoading: false,
              isDisabled: false,
            ),
            const SizedBox(width: 8),
            ButtonText(
              onPressed: () {},
              label: "Loading",
              leadingIcon: null,
              trailingIcon: null,
              isLoading: true,
              isDisabled: false,
            ),
            const SizedBox(width: 8),
            ButtonText(
              onPressed: () {},
              label: "Disabled",
              leadingIcon: null,
              trailingIcon: null,
              isLoading: false,
              isDisabled: true,
            ),
          ],
        ),
      ],
    );
  }
}
