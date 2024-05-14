class UserModel{ 
  final String id; 
  final String email; 
  final String fullName; 
  final String dateOfBirth; 
  final String idNumber; 
  final String contactNumber; 
  final String password; 

  UserModel({
    required this.id,
    required this.email,
    required this.fullName,
    required this.dateOfBirth,
    required this.idNumber,
    required this.contactNumber,
    required this.password,
  });

  UserModel copyWith({
    String? id,
    String? email,
    String? fullName,
    String? dateOfBirth,
    String? idNumber,
    String? contactNumber,
    String? password,
  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      fullName: fullName ?? this.fullName,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      idNumber: idNumber ?? this.idNumber,
      contactNumber: contactNumber ?? this.contactNumber,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'fullName': fullName,
      'dateOfBirth': dateOfBirth,
      'idNumber': idNumber,
      'contactNumber': contactNumber,
      'password': password,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      email: map['email'],
      fullName: map['fullName'],
      dateOfBirth: map['dateOfBirth'],
      idNumber: map['idNumber'],
      contactNumber: map['contactNumber'],
      password: map['password'],
    );
  }


  @override
  String toString() {
    return 'User(id: $id, email: $email, fullName: $fullName, dateOfBirth: $dateOfBirth, idNumber: $idNumber, contactNumber: $contactNumber, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UserModel &&
      other.id == id &&
      other.email == email &&
      other.fullName == fullName &&
      other.dateOfBirth == dateOfBirth &&
      other.idNumber == idNumber &&
      other.contactNumber == contactNumber &&
      other.password == password;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      email.hashCode ^
      fullName.hashCode ^
      dateOfBirth.hashCode ^
      idNumber.hashCode ^
      contactNumber.hashCode ^
      password.hashCode;
  }


  
}