import 'package:flutter/material.dart';
import 'package:va_reusable_components/va_reusable_components.dart';

class PrimaryButtonDemo extends StatelessWidget {
  const PrimaryButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Primary Button",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonPrimary(
              onPressed: () {},
              label: "Primary",
              leadingIcon: null,
              trailingIcon: null,
              isLoading: false,
              isDisabled: false,
            ),
            const SizedBox(width: 8),
            ButtonPrimary(
              onPressed: () {},
              label: "Loading",
              leadingIcon: null,
              trailingIcon: null,
              isLoading: true,
              isDisabled: false,
            ),
            const SizedBox(width: 8),
            ButtonPrimary(
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
