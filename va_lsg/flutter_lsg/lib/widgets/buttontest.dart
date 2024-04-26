import 'package:flutter/material.dart';
import 'package:va_reusable_components/va_reusable_components.dart';

class ButtonPrimary extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final bool isDisabled;
  final bool isLoading;

  const ButtonPrimary({
    super.key,
    required this.onPressed,
    required this.label,
    required this.leadingIcon,
    required this.trailingIcon,
    this.isDisabled = false,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Theme.of(context).colorScheme.primary;
    Color disabledBackgroundColor = Theme.of(context).colorScheme.tertiary;
    Color textColor = Theme.of(context).colorScheme.onPrimary;
    Color disabledTextColor = Theme.of(context).colorScheme.onTertiary;

    return Theme(
      data: VaTheme.themeData,
      child: SizedBox(
        height: 40.0,
        child: FilledButton(
          onPressed: isLoading || isDisabled ? null : onPressed,
          style: ButtonStyle(
            shape: MaterialStateProperty.resolveWith<OutlinedBorder>((states) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              );
            }),
            backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
              if (isLoading) {
                return backgroundColor;
              }
              if (states.contains(MaterialState.disabled)) {
                return disabledBackgroundColor;
              }
              return backgroundColor;
            }),
            foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
              if (isLoading) {
                return textColor;
              }
              if (states.contains(MaterialState.disabled)) {
                return disabledTextColor;
              }
              return textColor;
            }),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (!isLoading) ...[
                if (leadingIcon != null) Icon(leadingIcon),
                if (leadingIcon != null) const SizedBox(width: 8.0),
                Text(
                  label,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: 'monospace'),
                ),
                if (trailingIcon != null) const SizedBox(width: 8.0),
                if (trailingIcon != null) Icon(trailingIcon),
              ] else
                SizedBox(
                  width: 18.0,
                  height: 18.0,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(textColor),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
