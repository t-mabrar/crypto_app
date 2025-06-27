import 'package:crypto_app/providers/app_theme_provider.dart';
import 'package:flutter_components/flutter_components.dart';

List<ChangeNotifierProvider> providers = [
  ChangeNotifierProvider(create: (_) => AppThemeProvider()),
];
