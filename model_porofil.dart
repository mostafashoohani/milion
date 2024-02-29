// models.dart

class UserProfile {
  final String name;
  final String? lastName;
  final DateTime? dateOfBirth;
  final String? email;
  final String? password;
  final String? phoneNumber;
  final String? nationalCode;
  final String? accountNumber;
  final String? shabaNumber;
  final int? sake;
  final int? cup;
  final DateTime? updated;
  final DateTime? created;
  final String? photo;

  UserProfile({
    required this.name,
    this.lastName,
    this.dateOfBirth,
    this.email,
    this.password,
    this.phoneNumber,
    this.nationalCode,
    this.accountNumber,
    this.shabaNumber,
    this.sake,
    this.cup,
    this.updated,
    this.created,
    this.photo,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      name: json['name'],
      lastName: json['lastName'],
      dateOfBirth: json['dateOfBirth'] != null
          ? DateTime.parse(json['dateOfBirth'])
          : null,
      email: json['email'],
      password: json['password'],
      phoneNumber: json['phoneNumber'],
      nationalCode: json['nationalCode'],
      accountNumber: json['accountNumber'],
      shabaNumber: json['shabaNumber'],
      sake: json['sake'],
      cup: json['cup'],
      updated: json['updated'] != null ? DateTime.parse(json['updated']) : null,
      created: json['created'] != null ? DateTime.parse(json['created']) : null,
      photo: json['photo'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'lastName': lastName,
      'dateOfBirth': dateOfBirth?.toIso8601String(),
      'email': email,
      'password': password,
      'phoneNumber': phoneNumber,
      'nationalCode': nationalCode,
      'accountNumber': accountNumber,
      'shabaNumber': shabaNumber,
      'sake': sake,
      'cup': cup,
      'updated': updated?.toIso8601String(),
      'created': created?.toIso8601String(),
      'photo': photo,
    };
  }
}

class Question {
  final int? id;
  final int? userProfileId;
  final String? soal;
  final String? javab1;
  final String? javab2;
  final String? javab3;
  final String? javab4;
  final String? javabsahih;

  Question({
    this.id,
    this.userProfileId,
    this.soal,
    this.javab1,
    this.javab2,
    this.javab3,
    this.javab4,
    this.javabsahih,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'],
      userProfileId: json['userProfileId'],
      soal: json['soal'],
      javab1: json['javab1'],
      javab2: json['javab2'],
      javab3: json['javab3'],
      javab4: json['javab4'],
      javabsahih: json['javabsahih'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userProfileId': userProfileId,
      'soal': soal,
      'javab1': javab1,
      'javab2': javab2,
      'javab3': javab3,
      'javab4': javab4,
      'javabsahih': javabsahih,
    };
  }
}

class Version {
  final int? id;
  final int? userProfileId;
  final String? version;
  final String? darkhastBarDasht;
  final String? darkhastVariz;
  final String? paymsharkat;
  final String? aap;

  Version({
    this.id,
    this.userProfileId,
    this.version,
    this.darkhastBarDasht,
    this.darkhastVariz,
    this.paymsharkat,
    this.aap,
  });

  factory Version.fromJson(Map<String, dynamic> json) {
    return Version(
      id: json['id'],
      userProfileId: json['userProfileId'],
      version: json['version'],
      darkhastBarDasht: json['darkhastBarDasht'],
      darkhastVariz: json['darkhastVariz'],
      paymsharkat: json['paymsharkat'],
      aap: json['aap'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userProfileId': userProfileId,
      'version': version,
      'darkhastBarDasht': darkhastBarDasht,
      'darkhastVariz': darkhastVariz,
      'paymsharkat': paymsharkat,
      'aap': aap,
    };
  }
}

class AppInfo {
  static const String appVersion = '1.0.0';
}
