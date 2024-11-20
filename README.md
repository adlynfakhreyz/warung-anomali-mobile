# warung_anomali

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Tugas 7
---

#### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

- **Stateless Widget**: merupakan widget yang bersifat statis dan tidak dapat berubah setelah dibuat. Stateless widget tidak memiliki state atau keadaan yang bisa diperbarui saat aplikasi berjalan, sehingga tampilan dan perilakunya tetap sama sepanjang waktu. Contoh stateless widget adalah Text dan Icon, yang hanya menampilkan data tanpa memerlukan perubahan.

- **Stateful Widget**: merupakan widget yang dapat berubah atau memperbarui dirinya berdasarkan interaksi atau perubahan data. Stateful widget memiliki objek State yang melacak dan mengatur setiap perubahan sehingga memungkinkan untuk merender ulang widget tersebut dengan tampilan baru. Contoh stateful widget adalah Checkbox atau TextField, yang merespons interaksi pengguna atau perubahan data.

##### Perbedaan:

- **Stateless Widget**: Tidak memiliki state yang bisa berubah, sehingga lebih efisien dalam penggunaan memori dan performa.
- **Stateful Widget**: Dapat menyimpan dan memperbarui state, yang memungkinkan perubahan tampilan sesuai dengan data atau interaksi yang terjadi.

#### 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
- **MaterialApp**: Mengatur aplikasi utama dengan tema, pengaturan dasar, dan navigasi.
- **Scaffold**: Memberikan struktur halaman aplikasi dengan AppBar, body, dan floatingActionButton.
- **AppBar**: Menampilkan judul di bagian atas halaman.
- **Padding**: Menambahkan ruang di sekitar widget untuk tata letak yang rapi.
- **Column**: Menyusun widget secara vertikal.
- **Row**: Menyusun widget secara horizontal.
- **InfoCard (Custom Widget)**: Menampilkan informasi dalam format kartu.
- **Text**: Menampilkan teks di layar.
- **SizedBox**: Menambah ruang kosong di antara elemen.
- **GridView**: Menyusun widget dalam grid dengan beberapa kolom.
- **ItemCard (Custom Widget)**: Menampilkan ikon dan teks untuk item menu dengan efek klik.
- **Icon**: Menampilkan ikon grafis.
- **SnackBar**: Menampilkan pesan notifikasi sementara di bagian bawah layar.
- **InkWell**: Memberikan efek sentuhan pada widget yang dikemas.
- **Container**: Menyediakan tata letak dan dekorasi untuk widget lain.
- **Card**: Menampilkan kotak dengan bayangan atau elevasi untuk informasi.

#### 3. Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi `setState()` pada `StatefulWidget` memberi tahu Flutter untuk memperbarui tampilan UI ketika ada perubahan data yang memengaruhi tampilan.

Variabel yang terdampak `setState()` adalah yang memengaruhi UI, seperti nilai penghitung atau status tombol, sehingga tampilannya ikut diperbarui.

#### 4. Jelaskan perbedaan antara `const` dengan `final`.
- **`const`**: Mendeklarasikan nilai konstan yang tetap sejak kompilasi dan tidak bisa diubah, ideal untuk nilai yang selalu sama (misalnya, `const pi = 3.14;`).

- **`final`**: Mendeklarasikan variabel yang diinisialisasi satu kali saat runtime, tetap setelahnya, cocok untuk nilai yang baru diketahui saat aplikasi berjalan (misalnya, `final timeNow = DateTime.now();`).

Perbedaan utama: `const` untuk nilai tetap sejak kompilasi, sedangkan `final` bisa diisi saat runtime.

#### 5 Step by step mengimplementasikan Checklist

##### 1. Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.
Membuat direktori baru tempat menyimpan projek flutter kemudian pada direktori tersebut jalankan
```bash
flutter create warung_anomali
```

##### 2. Membuat tiga tombol sederhana dengan ikon dan teks untuk:
 - Melihat daftar produk (Lihat Daftar Produk)
 - Menambah produk (Tambah Produk)
 - Logout (Logout)
 pertama perlu membuat dulu class ItemHomepage

 Buatlah kelas ItemHomePage yang memiliki variabel final bernama nama (tipe String) dan icon (tipe IconData), serta sebuah konstruktor yang sesuai.

 ```dart
 class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomepage(this.name, this.icon, this.color);
}
 ```
##### 3. Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (`Lihat Daftar Produk`, `Tambah Produk`, dan `Logout`).

Kemudian, buat 3 objek dari kelas ItemHomePage di dalam MyHomePage dengan memberikan parameter yang sesuai untuk setiap objek.

Pada pembuatan tombol di MyHomePage, menambahkan color yang berbeda untuk setiap tombol
```dart
class MyHomePage extends StatelessWidget {
  final String npm = '2306241713'; // NPM
  final String name = 'Andi Muhammad Adlyn Fakhreyza Khairi Putra'; // Nama
  final String className = 'PBP B'; // Kelas

  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.list_alt, Colors.blue),
    ItemHomepage("Tambah Produk", Icons.add_shopping_cart, Colors.green),
    ItemHomepage("Logout", Icons.logout, Colors.red),
  ];
  ...
}
```
Kemudian ubah attribute color pada class `ItemCard` menjadi `item.color`
```dart
class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.

  final ItemHomepage item; 
  
  const ItemCard(this.item, {super.key}); 

  @override
  Widget build(BuildContext context) {
    return Material(
      // Menentukan warna latar belakang dari kartu.
      color: item.color,
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),
      ...
}
```
##### 4. Memunculkan Snackbar dengan tulisan:

Pada `ItemCard` tambahkan juga code berikut:
 - "Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol Lihat Daftar Produk ditekan.
 - "Kamu telah menekan tombol Tambah Produk" ketika tombol Tambah Produk ditekan.
 - "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.
```dart
 class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.

  final ItemHomepage item; 
  
  const ItemCard(this.item, {super.key}); 

  @override
  Widget build(BuildContext context) {
    return Material(
      // Menentukan warna latar belakang dari tema aplikasi.
      color: item.color,
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),
      
      child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
        },
        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

# Tugas 8
---

#### 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
---
`const` digunakan untuk membuat objek yang nilainya tidak berubah-ubah sepanjang runtime. Ini membantu menghemat memori dan meningkatkan memori, karena ketika suatu object/widget ditambahkan `const`, flutter hanya menyimpannya sekali dalam memori dan tidak akan merender ulang elemen terkat jika tidak ada perubahan. Ini sangat menguntungkan dan bisa digunakan pada widget statis seperti teks, warna, padding, yang tidak berubah.

Sebaiknya `const` digunakan pada widget atau data yang bersifat statis dan pada widget yang tidak memiliki state atau hanya menampilkan data statis, const bisa digunakan untuk mencegah rendering ulang yang tidak diperlukan. Jangan gunakan `const` pada objek atau widget yang nilainya dinamis (berubah selama runtime), seperti nilai yang berasal dari variable atau input pengguna. 

#### 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
---

`Column` adalah widget layout yang digunakan untuk menyusun widget lain dalam arah vertikal (atas ke bawah), sedangkan `Row` untuk menyusunnya dalam arah horizontal (kiri ke kanan). 

Contoh implementasi `Column` dan `Row`:
```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
)
```

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
    Icon(Icons.home),
    Icon(Icons.star),
    Icon(Icons.person),
  ],
)

```

#### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
---
#####  Yang digunakan:
- `TextFormField`, untuk menginput teks. Setiap `TextFormField` memiliki validator untuk memvalidasi masukan pengguna, seperti memastikan tidak kosong, memeriksa panjang maksimum, serta memeriksa apakah masukan adalah angka untuk amount dan price.

- `ElevatedButton`: Digunakan sebagai tombol "Save" untuk menyimpan data setelah semua masukan valid. Jika form valid, tombol ini juga menampilkan dialog konfirmasi.

##### ELemen input Flutter lain yang tidak digunakan, antara lain:

- `Checkbox`: Untuk input berbentuk kotak centang yang berguna untuk memilih atau menandai status tertentu.
- `Radio`: Untuk input pilihan tunggal dari beberapa opsi.
- `Switch`: Untuk input yang dapat digunakan dalam bentuk pengaturan on/off.
- `Slider`: Untuk input nilai dalam rentang tertentu, misalnya memilih harga minimum dan maksimum.
- `DatePicker`: Untuk memilih tanggal, yang berguna untuk aplikasi yang membutuhkan masukan tanggal.
- `DropDownButton`: Untuk input pilihan yang dapat dipilih dari daftar pilihan yang tersedia.

#### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
---

Untuk mengatur tema di aplikasi flutter agar konsisten, bisa didefinisikan `ThemeData` di root aplikasi. 

Ya, pada aplikasi ini saya telah mengimplementasikan tema dengan mendefinisikan `ThemeData` pada `MaterialApp` di kelas `MyApp`. Disini saya telah mengatur tema dengan mendefinisikan `colorScheme` yang menggunakan `ColorScheme.fromSwatch()` untuk menghasilkan skema warna dasar dengan `primarySwatch` berwarna `deepPurple` dan warna sekunder `deepPurple[600]`. Ini membuat warna aplikasi seragam di berbagai widget yang menggunakan tema tersebut. 

#### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
---

Untuk menangani navigasi, dapat digunakan widget `Navigator` dan `MaterialPageRoute` untuk berpindah antar halaman. `Navigator` memungkinkan aplikasi memiliki struktur yang mirip dengan stack, di mana setiap halaman baru yang ditampilkan akan ditumpuk di atas halaman sebelumnya. Beberapa cara umum untuk menangani navigasi dalam Flutter adalah:

1. Push dan Pop
Untuk menavigasi ke halaman baru, menggunakan `Navigator.push` bersama dengan `MaterialPageRoute`. Metode ini menambahkan halaman baru ke dalam stack navigasi.
Untuk kembali ke halaman sebelumnya, menggunakan `Navigator.pop`, yang akan mengeluarkan halaman teratas dari stack.

2. Push Replacement
Untuk mengganti halaman saat ini dengan halaman baru tanpa dapat kembali ke halaman lama, gunakan `Navigator.pushReplacement`.

Untuk aplikasi dengan struktur navigasi tab, juga bisa menggunakan `BottomNavigationBar` atau `Drawer` yang memungkinkan pengguna berpindah antara halaman utama atau kategori aplikasi tanpa harus kembali ke halaman sebelumnya.


# Tugas 9
---

#### 1. Mengapa kita perlu membuat model untuk pengambilan atau pengiriman data JSON? Apakah akan terjadi error jika tidak membuat model terlebih dahulu?

Pentingnya model untuk JSON:*
- Struktur Data yang Konsisten: Model membantu memetakan data JSON dari API ke objek Dart, sehingga lebih mudah untuk diakses dan digunakan di Flutter.
- Keamanan dan Validasi: Dengan model, kita bisa memastikan struktur data yang diterima atau dikirim sesuai spesifikasi API. Ini mengurangi kemungkinan error saat menggunakan data.
- Kemudahan Pemrosesan Data: JSON bisa kompleks, seperti nested objects. Dengan model, kita bisa memanfaatkan serialization/deserialization secara otomatis, sehingga lebih efisien dibandingkan memproses JSON manual.

Apakah akan terjadi error jika tidak membuat model terlebih dahulu?
Tidak selalu terjadi error, namun kemungkinannya data akan lebih sulit dikelola karena harus diakses menggunakan map (`data['key']`), yang rawan typo. Kemungkinan error lebih tinggi jika struktur JSON berubah atau jika ada kesalahan parsing data. Proyek akan menjadi lebih sulit untuk dimaintain, terutama saat bekerja dengan data kompleks.

---

#### 2. Fungsi dari library `http` pada tugas ini

Library `http` berfungsi untuk:
- Melakukan permintaan HTTP (Request):
  - `GET`: Mengambil data dari API.
  - `POST`: Mengirim data ke server (misalnya login, registrasi, atau submit form).
- Menerima respons HTTP (Response):
  - Mendapatkan data dalam format JSON atau lainnya, lalu memprosesnya untuk ditampilkan di aplikasi.
- Komunikasi dengan server:
  - `http` memungkinkan aplikasi Flutter berkomunikasi dengan Django (backend) untuk bertukar data secara real-time.

Pada tugas ini, library `http` conothnya digunakan untuk mengambil data produk dari API Django, mendaftarkan produk baru, serta otentikasi user.

---

#### 3. Fungsi `CookieRequest` dan Mengapa Instance-nya Dibagikan ke Semua Komponen

**Fungsi CookieRequest**
- **Manajemen Autentikasi:
  - Menyimpan dan mengelola cookies yang diterima dari server saat login.
  - Cookies digunakan untuk menjaga sesi autentikasi pengguna di seluruh aplikasi.
- HTTP Request dengan Autentikasi:
  - Mengirim permintaan HTTP (GET, POST) yang sudah menyertakan cookies untuk membuktikan bahwa pengguna terautentikasi.
- Keamanan:
  - Cookies yang dikelola oleh `CookieRequest` memastikan bahwa hanya pengguna yang memiliki sesi aktif yang bisa mengakses data atau fitur tertentu.

**Mengapa Instance `CookieRequest` Dibagikan?**
- State Global:
  - Agar cookies dan status autentikasi dapat digunakan oleh semua komponen aplikasi tanpa perlu membuat ulang instance.
- Konsistensi:
  - Instance yang sama memastikan semua request di aplikasi menggunakan sesi autentikasi yang sama.
- Efisiensi:
  - Menghindari pengulangan logika pengelolaan cookies di setiap komponen.

---

#### 4. Mekanisme Pengiriman Data dari Input hingga Ditampilkan pada Flutter

1. Input Data di Flutter:
   - Pengguna memasukkan data melalui UI (form, tombol, dll).
   - Data dikumpulkan dalam objek Dart atau langsung dikirimkan ke backend melalui HTTP request.

2. Pengiriman Data ke Server:
   - Flutter menggunakan `http` atau `CookieRequest` untuk mengirimkan data ke endpoint API di Django.

3. Pemrosesan di Django:
   - Django menerima data dari request.
   - Data diproses (misalnya disimpan ke database atau diolah).
   - Django mengembalikan respons (dalam format JSON) ke Flutter.

4. Menerima Data di Flutter:
   - Flutter menerima respons JSON dari Django.
   - Data JSON di-deserialisasi menjadi objek Dart (misalnya menggunakan model `Product`).
   - Objek Dart digunakan untuk memperbarui UI aplikasi Flutter.

5. Menampilkan Data di UI Flutter

---

#### 5. Mekanisme Autentikasi dari Login, Register, hingga Logout

1. Login
- Input di Flutter:
  - Pengguna memasukkan username dan password ke form login.
  - Data dikirimkan ke endpoint login Django.

- Proses di Django:
  - Django memverifikasi data akun terhadap database.
  - Jika berhasil, Django mengembalikan cookies autentikasi ke Flutter.

- Flutter Menyimpan Cookies:
  - `CookieRequest` menyimpan cookies untuk digunakan dalam yang lain.

- Tampilan Menu:
  - Flutter memvalidasi bahwa pengguna telah login (berdasarkan cookies) dan menampilkan menu yang sesuai.

2. Register
- Input di Flutter:
  - Pengguna mengisi form register.
  - Data dikirimkan ke endpoint register Django.

- Proses di Django:
  - Django memvalidasi dan menyimpan data pengguna ke database.
  - Jika berhasil, pengguna diarahkan ke halaman login.

3. Logout
- Proses Logout di Flutter:
  - Flutter mengirimkan request logout ke Django.
  - Django menghapus cookies sesi pengguna di server.

- Hasil Logout:
  - Cookies dihapus di sisi Flutter (`CookieRequest`).
  - Aplikasi kembali ke tampilan depan login. 

#### 6. Cara Implementasi checklist

#### Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter, mdembuat halaman login pada proyek tugas Flutter, dan mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.

1. Membuat modul baru authentication pada Django untuk menangani request register.
```py
from django.shortcuts import render

# Create your views here.
from django.contrib.auth import authenticate, login as auth_login
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth.models import User
import json
from django.contrib.auth import logout as auth_logout

@csrf_exempt
def login(request):
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)
    if user is not None:
        if user.is_active:
            auth_login(request, user)
            # Status login sukses.
            return JsonResponse({
                "username": user.username,
                "status": True,
                "message": "Login sukses!"
                # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
            }, status=200)
        else:
            return JsonResponse({
                "status": False,
                "message": "Login gagal, akun dinonaktifkan."
            }, status=401)

    else:
        return JsonResponse({
            "status": False,
            "message": "Login gagal, periksa kembali email atau kata sandi."
        }, status=401)
        
@csrf_exempt
def register(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        username = data['username']
        password1 = data['password1']
        password2 = data['password2']

        # Check if the passwords match
        if password1 != password2:
            return JsonResponse({
                "status": False,
                "message": "Passwords do not match."
            }, status=400)
        
        # Check if the username is already taken
        if User.objects.filter(username=username).exists():
            return JsonResponse({
                "status": False,
                "message": "Username already exists."
            }, status=400)
        
        # Create the new user
        user = User.objects.create_user(username=username, password=password1)
        user.save()
        
        return JsonResponse({
            "username": user.username,
            "status": 'success',
            "message": "User created successfully!"
        }, status=200)
    
    else:
        return JsonResponse({
            "status": False,
            "message": "Invalid request method."
        }, status=400)

@csrf_exempt
def logout(request):
    username = request.user.username

    try:
        auth_logout(request)
        return JsonResponse({
            "username": username,
            "status": True,
            "message": "Logout berhasil!"
        }, status=200)
    except:
        return JsonResponse({
        "status": False,
        "message": "Logout gagal."
        }, status=401)
```
2. Membuat page registrasi, login, dan logout pada flutter
3. mengintegrasikannya dengan django
Potongan code pada `register.dart`, `login.dart` dan tombol logout `product_card.dart` yang mengintegrasikan fitur authentikasi django dengan flutter
```dart
...
const SizedBox(height: 24.0),
ElevatedButton(
  onPressed: () async {
    String username = _usernameController.text;
    String password1 = _passwordController.text;
    String password2 = _confirmPasswordController.text;

    final response = await request.postJson(
        "http://127.0.0.1:8000/auth/register/",
        jsonEncode({
          "username": username,
          "password1": password1,
          "password2": password2,
        }));
    if (context.mounted) {
      if (response['status'] == 'success') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Successfully registered!'),
          ),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const LoginPage()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to register!'),
          ),
        );
      }
    }
  },
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    minimumSize: Size(double.infinity, 50),
    backgroundColor: Theme.of(context).colorScheme.primary,
    padding: const EdgeInsets.symmetric(vertical: 16.0),
  ),
  child: const Text('Register'),
),
...
```
```dart
...
const SizedBox(height: 24.0),
  ElevatedButton(
    onPressed: () async {
      String username = _usernameController.text;
      String password = _passwordController.text;

      final response = await request.login(
          "http://127.0.0.1:8000/auth/login/",
          {
            'username': username,
            'password': password,
          });

      if (request.loggedIn) {
        String message = response['message'];
        String uname = response['username'];
        if (context.mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => MyHomePage()),
          );
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                  content:
                      Text("$message Selamat datang, $uname.")),
            );
        }
      } else {
        if (context.mounted) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Login Gagal'),
              content: Text(response['message']),
              actions: [
                TextButton(
                  child: const Text('OK'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          );
        }
      }
    },
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      minimumSize: Size(double.infinity, 50),
      backgroundColor: Theme.of(context).colorScheme.primary,
      padding: const EdgeInsets.symmetric(vertical: 16.0),
    ),
    child: const Text('Login'),
  ),
...
```
```dart
...
 else if (item.name == "Logout") {
    final response = await request.logout(
        "http://127.0.0.1:8000/auth/logout/");
    String message = response["message"];
    if (context.mounted) {
        if (response['status']) {
            String uname = response["username"];
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("$message Sampai jumpa, $uname."),
            ));
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
            );
        } else {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text(message),
                ),
            );
        }
    }
}
...
```

#### Membuat model kustom sesuai dengan proyek aplikasi Django.
1. Menggunakan QuickType dengan mengisikan format data seperti yang ada pada endpoint `json`
2. Kemudian membuat folder `models` pada flutter dan membuat file `product.dart` dan mengisikannya dengan code yang di generate oleh QuickType, seperti berikut:
```dart
// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
    String model;
    String pk;
    Fields fields;

    Product({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    int price;
    String description;
    String color;
    int stock;

    Fields({
        required this.user,
        required this.name,
        required this.price,
        required this.description,
        required this.color,
        required this.stock,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        color: json["color"],
        stock: json["stock"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "description": description,
        "color": color,
        "stock": stock,
    };
}
```

#### Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy. Tampilkan name, price, dan description dari masing-masing item pada halaman ini.

1. membuat file `list_productentry.dart`, dan didalamnya melakukan request ke endpoint django untuk fetch data product yang ingin ditampilkan. Kemudian datanya diconvert menjadi object sesuai model yang tadi didefinisikan kemudian disimpan ke dalam `listProduct`. Kemudian ditampilkan, seperti berikut:
```dart
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:warung_anomali/models/product_entry.dart';
import 'package:warung_anomali/widgets/left_drawer.dart';
import 'package:warung_anomali/screens/productdetailpage.dart';

class ProductEntryPage extends StatefulWidget {
  const ProductEntryPage({super.key});

  @override
  State<ProductEntryPage> createState() => _ProductEntryPageState();
}

class _ProductEntryPageState extends State<ProductEntryPage> {
  Future<List<Product>> fetchProduct(CookieRequest request) async {
    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
    final response = await request.get('http://127.0.0.1:8000/json/');

    // Melakukan decode response menjadi bentuk json
    var data = response;

    // Melakukan konversi data json menjadi object Product
    List<Product> listProduct = [];
    for (var d in data) {
      if (d != null) {
        listProduct.add(Product.fromJson(d));
      }
    }
    return listProduct;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Entry List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProduct(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'Belum ada data produk pada warung anomali.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailPage(
                          product: snapshot.data![index],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name: ${snapshot.data![index].fields.name}",
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text("Price: ${snapshot.data![index].fields.price}"),
                        const SizedBox(height: 10),
                        Text(
                            "Description: ${snapshot.data![index].fields.description}"),
                        const SizedBox(height: 10),
                        Text("Color: ${snapshot.data![index].fields.color}"),
                        const SizedBox(height: 10),
                        Text("Stock: ${snapshot.data![index].fields.stock}"),
                      ],
                    ),
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}
```

#### Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item. Halaman ini dapat diakses dengan menekan salah satu item pada halaman daftar Item. Tampilkan seluruh atribut pada model item kamu pada halaman ini. Tambahkan tombol untuk kembali ke halaman daftar item.

1. Membuat halaman baru untuk menampilkan data item seperti berikut, `productdetailpage.dart`:
```dart
import 'package:flutter/material.dart';
import 'package:warung_anomali/models/product_entry.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.fields.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Menampilkan semua field yang dimiliki product
            const SizedBox(height: 16),
            Text("Price: ${product.fields.price}"),
            const SizedBox(height: 8),
            Text("Description: ${product.fields.description}"),
            const SizedBox(height: 8),
            Text("Color: ${product.fields.color}"),
            const SizedBox(height: 8),
            Text("Stock: ${product.fields.stock}"),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Button untuk navigasi balik ke halaman sebelumnya
              },
              child: const Text('Back to Product List'),
            ),
          ],
        ),
      ),
    );
  }
}
```
2. Menambahkan button pada page daftar produk `list_productentry.dart` untuk navigasi kehalaman detail product
```dart
...
itemBuilder: (_, index) => InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailPage(
          product: snapshot.data![index],
        ),
      ),
    );
  },
...
```

#### Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.

Filter item dilakukan pada Django, seperti yang sudah dijelaskan sebelumnya, sehingga data yang dikirim ke flutter sudah terfilter.