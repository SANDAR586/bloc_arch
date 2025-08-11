# Retrofit + JSON Serialization Usage Guide (Flutter)

This guide explains the **minimum steps** for adding new API calls with Retrofit in Flutter, and when to run `build_runner`.

---

## 1️⃣ Create Your Model Class

- Always annotate with `@JsonSerializable()`.
- Add `part 'file_name.g.dart';` at the top.v
- Include `fromJson` and `toJson` methods.

```dart
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final int id;
  final String name;

  User({required this.id, required this.name});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
```

## 2️⃣ Create the API Interface
Use Retrofit annotations like @GET, @POST.

** Add part 'api_service.g.dart'; at the top.**

```dart
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'user.dart';

part 'api_service.g.dart';// important

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/users/{id}")
  Future<User> getUser(@Path("id") int id);
}


```

### 3️⃣ When to Run Build Runner

 Run build_runner every time you:
  1. Create a new Retrofit service
  2. Add a new model class with @JsonSerializable()
  3. Change any field names/types in an existing model
  4. Add or modify an API interface method

```bash
 dart run build_runner build
```
### 📝 Quick Flow
 - Create Model → @JsonSerializable → add fromJson / toJson
 - Create API Class → @RestApi → define endpoints
 - Run build_runner → generates .g.dart files
 - Use API in your code


#### how to check dart version
  ```bash  
  dart --version 
```

#### how to update sdk 

```bash
   flutter upgrade
```
#### feature naming explanation
 - c : using cubit
 - b : using bloc
 - providre : using provider. 
