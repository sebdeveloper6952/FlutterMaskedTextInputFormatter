# masked_text_input_formatter

Really simple text formatting to use as InputFormatters in TextField and TextFormField.

## Getting Started

In your flutter project, add the dependency:
```
dependencies:
  masked_text_input_formatter: "0.0.1"
```

## Usage Example

Import masked_text_input_formatter.dart:
```dart
import 'masked_text_input_formatter/masked_text_input_formatter.dart
```

### Credit Card Number

```dart
TextField(
  inputFormatters: [
    MaskedTextInputFormatter(
      mask: 'xxxx-xxxx-xxxx-xxxx',
      separator: '-',
    ),
  ],
);
```

### Date
```dart
TextField(
  inputFormatters: [
    MaskedTextInputFormatter(
      mask: 'MM/YY',
      separator: '/',
    ),
  ],
);
```
