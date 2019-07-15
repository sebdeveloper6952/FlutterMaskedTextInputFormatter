library masked_text_input_formatter;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MaskedTextInputFormatter extends TextInputFormatter {
  final String mask;
  final List<String> separators;

  MaskedTextInputFormatter({
    @required this.mask,
    @required this.separators,
  }) {
    assert(mask != null);
    assert(separators != null);
  }

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.length > 0) {
      if (newValue.text.length > oldValue.text.length) {
        if (newValue.text.length > mask.length) return oldValue;
        if (newValue.text.length < mask.length &&
            separators.contains(mask[newValue.text.length - 1])) {
          return TextEditingValue(
            text:
            '${oldValue.text}${mask[newValue.text.length-1]}${newValue.text.substring(newValue.text.length - 1)}',
            selection: TextSelection.collapsed(
              offset: newValue.selection.end + 1,
            ),
          );
        }
      }
    }
    return newValue;
  }
}
