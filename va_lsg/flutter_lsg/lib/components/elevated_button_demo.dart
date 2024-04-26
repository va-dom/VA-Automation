import 'package:flutter/material.dart';
import 'package:va_reusable_components/va_reusable_components.dart';

class ElevatedButtonDemo extends StatelessWidget {
  const ElevatedButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Elevated Button",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonElevated(
              onPressed: () {},
              label: "Primary",
              leadingIcon: null,
              trailingIcon: null,
              isLoading: false,
              isDisabled: false,
            ),
            const SizedBox(width: 8),
            ButtonElevated(
              onPressed: () {},
              label: "Loading",
              leadingIcon: null,
              trailingIcon: null,
              isLoading: true,
              isDisabled: false,
            ),
            const SizedBox(width: 8),
            ButtonElevated(
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
