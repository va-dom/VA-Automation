import 'package:flutter/material.dart';
import 'package:va_reusable_components/va_reusable_components.dart';

class SecondaryButtonDemo extends StatelessWidget {
  const SecondaryButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Secondary Button",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonSecondary(
              onPressed: () {},
              label: "Primary",
              leadingIcon: null,
              trailingIcon: null,
              isLoading: false,
              isDisabled: false,
            ),
            const SizedBox(width: 8),
            ButtonSecondary(
              onPressed: () {},
              label: "Loading",
              leadingIcon: null,
              trailingIcon: null,
              isLoading: true,
              isDisabled: false,
            ),
            const SizedBox(width: 8),
            ButtonSecondary(
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
