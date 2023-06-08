import 'package:intl/intl.dart';

/// Formatters used in the demo.
abstract class DemoFormatters {
  /// Formatter for the host rating.
  static final ratingFormatter = NumberFormat()
    ..minimumFractionDigits = 1
    ..maximumFractionDigits = 2;

  /// Formatter for the apartment price.
  static final priceFormatter = NumberFormat.currency(
    symbol: '€ ',
    decimalDigits: 0,
  );
}
