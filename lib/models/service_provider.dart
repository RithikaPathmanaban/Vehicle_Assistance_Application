// lib/models/service_provider.dart

class ServiceProvider {
  final String name;
  final String phone;
  final String locationUrl;

  ServiceProvider({
    required this.name,
    required this.phone,
    required this.locationUrl,
  });
}

// Sample service provider data (this could be used in service_providers_screen.dart)
List<ServiceProvider> sampleProviders = [
  ServiceProvider(
    name: 'ABC Auto Repair',
    phone: '1234567890',
    locationUrl: 'https://maps.google.com/?q=ABC+Auto+Repair',
  ),
  ServiceProvider(
    name: 'XYZ Car Service',
    phone: '0987654321',
    locationUrl: 'https://maps.google.com/?q=XYZ+Car+Service',
  ),
];
