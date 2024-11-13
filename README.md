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

