import 'dart:io';

class Product {
  String brand;
  double price;

  //constrctor
  Product({required this.brand, required this.price});
}

List<Product> phones = [
  Product(brand: "iPhone 15 Pro", price: 999),
  Product(brand: "Samsung S24 Ultra", price: 899),
  Product(brand: "Huawei Mate 60", price: 799),
  Product(brand: "Oppo Find X7", price: 650),
  Product(brand: "Xiaomi 14 Pro", price: 700),
  Product(brand: "Google Pixel 8 Pro", price: 950),
  Product(brand: "OnePlus 12", price: 800),
  Product(brand: "Realme GT 6", price: 600),
  Product(brand: "Sony Xperia 1 V", price: 1100),
  Product(brand: "Nokia XR21", price: 499),
];

void printPhones() {
  print("========== Available Phones ==========");

 for (int i = 0; i < phones.length; i++) {
    print("${i + 1}. ${phones[i].brand} - \$${phones[i].price}");
  }
  print("==================================");
  print("Total phones: ${phones.length}");
}

void repairDevice() {
  List<String> repairServices = [
    "1. Screen Replacement 📱 - \$100.0",
    "2. Battery Replacement 🔋 - \$50.0",
    "3. Software Update 💻 - \$80.0",
    "4. Device Cleaning 🧹 - \$70.0",
    "5. Water Damage Repair 💧 - \$30.0",
  ];

  print("==================================");
  
  for (var service in repairServices) {
    print(service);
  }
  print("====================================");
  exit(0);
}
