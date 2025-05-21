# loading_builder

A Flutter package providing lightweight and reusable loading widgets, including a basic circular progress indicator, a button loading spinner, and a customizable shimmer effect.

## Features

- `btnLoading` widget: Adds a loading spinner next to buttons or anywhere a small loader is needed.
- `BuildLoading` widget: Simple centered `CircularProgressIndicator` for loading states.
- `ShimmerLoading` widget: A beautiful shimmer effect for placeholders while content is loading.

## Getting Started

Add the dependency in your `pubspec.yaml`:

```yaml
dependencies:
  loading_builder: ^0.0.3
```

## Usage

### Button Loading Spinner

```dart
import 'package:loading_builder/loading_builder.dart';

ElevatedButton(
  onPressed: isLoading ? null : _submit,
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text('Submit'),
      btnLoading(loading: isLoading)
    ],
  ),
)
```

### Centered Circular Loading

```dart
import 'package:loading_builder/loading_builder.dart';

@override
Widget build(BuildContext context) {
  return const BuildLoading();
}
```

### Shimmer Loading Placeholder

```dart
import 'package:loading_builder/loading_builder.dart';

@override
Widget build(BuildContext context) {
  return ShimmerLoading(
    height: 100,
    width: double.infinity,
  );
}
```

## Customization
- `btnLoading` allows you to adjust size, stroke width, and background color.
- `ShimmerLoading` supports custom base and highlight colors for better theme integration.

## License

This project is licensed under the MIT License.

---

Ready to make your app's loading experience clean and polished with minimal code? Start using **loading_builder** today!

