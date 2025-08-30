class Weather {
  final String city;
  final double? temperature;  // Nullable because API might fail
  final String? condition;    // Nullable (e.g., "Sunny", "Rainy")

  Weather({
    required this.city,
    this.temperature,
    this.condition,
  });

  void display() {
    print("City: $city");
    print("Temp: ${temperature?.toStringAsFixed(1) ?? "No data"} °C");
    print("Condition: ${condition ?? "Unknown"}");
  }
}

void main() {
  // Simulated API data
  var data = [
    {"city": "Nairobi", "temperature": 27.5, "condition": "Sunny"},
    {"city": "Kisumu"}, // Missing data
    {"city": "Mombasa", "temperature": null, "condition": "Rainy"}
  ];

  var weathers = data.map((json) => Weather(
        city: json["city"],
        temperature: json["temperature"],
        condition: json["condition"],
      ));

  for (var w in weathers) {
    print("====");
    w.display();
  }
}
