import 'dart:convert';

class StudantTadsEntidy {
  final String name;
  final int age;
  final String email;
  final String address;
  final String phone;

  StudantTadsEntidy({
    required this.name,
    required this.age,
    required this.email,
    required this.address,
    required this.phone,
  });

  factory StudantTadsEntidy.sampleInfo() {
    return StudantTadsEntidy(
      name: 'Martin Luther King Jr.',
      age: 20,
      email: 'marting.lkjr@gmail.com',
      address: 'Info22, IFPR Campus Paranaguá',
      phone: '(41) 99999-9999',
    );
  }

  StudantTadsEntidy copyWith({
    String? name,
    int? age,
    String? email,
    String? address,
    String? phone,
  }) {
    return StudantTadsEntidy(
      name: name ?? this.name,
      age: age ?? this.age,
      email: email ?? this.email,
      address: address ?? this.address,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age,
      'email': email,
      'address': address,
      'phone': phone,
    };
  }

  factory StudantTadsEntidy.fromMap(Map<String, dynamic> map) {
    return StudantTadsEntidy(
      name: map['name'],
      age: map['age'],
      email: map['email'],
      address: map['address'],
      phone: map['phone'],
    );
  }

  String toJson() => json.encode(toMap());

  factory StudantTadsEntidy.fromJson(String source) =>
      StudantTadsEntidy.fromMap(json.decode(source));

  @override
  String toString() {
    return 'StudantTadsEntidy(name: $name, age: $age, email: $email, address: $address, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StudantTadsEntidy &&
        other.name == name &&
        other.age == age &&
        other.email == email &&
        other.address == address &&
        other.phone == phone;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        age.hashCode ^
        email.hashCode ^
        address.hashCode ^
        phone.hashCode;
  }
}
