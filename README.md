# Bakery Mobile
Bakery Mobile adalah aplikasi mobile E-Commerce yang menyediakan berbagai pilihan produk makanan roti, kue, dan juga pastry.
<br>
<br>
Nama: Janssen Benedict<br>
NPM: 2306152102<br>
Kelas: PBP D<br>
<br>
<br>
### ---------------------------------------------------------TUGAS 7---------------------------------------------------------

### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
- Stateless Widget merupakan jenis widget pada Flutter yang bersifat statis atau tidak dapat berubah setelah pembuatannya, data yang ditampilkan oleh Stateless Widget bersifat tetap. Perubahan apapun dalam variabel, tombol, ikon, atau pemerolehan data tidak dapat mengubah state dari aplikasi tersebut. Stateless Widget melakukan override terhadap method build() dan mengembalikan widgetnya. Contohnya adalah Text, Icon, IconButton, dan lain-lain.
- Stateful Widget merupakan jenis widget pada Flutter yang bersifat dinamis dan memungkinkan terjadinya perubahan tampilan data sesuai dengan interaksi dengan pengguna ataupun update terhadap data secara real-time. State aplikasi bersifat mutable dan dapat berubah saat aplikasi Flutter itu berjalan. Stateful Widget melakukan override terhadap method createState() dan mengembalikan suatu state. Contohnya adalah Form, TextField, RadioButton, CheckBox, dan lain-lain.
- Perbedaan dari keduanya diantaranya adalah Stateless Widget merupakan widget yang bersifat statis, sedangkan Stateful Widget bersifat dinamis. Karena bersifat statis, Stateless Widget tidak mengandalkan atau mengekspektasikan perubahan dalam data ataupun perilaku pengguna, sedangkan Stateful Widget memungkinkan perubahan pada runtime berdasarkan perilaku pengguna atau perubahan data. Stateless Widget tidak mempunyai state sehingga akan di-render sekali dan tidak akan memperbarui dirinya sendiri, sedangkan Stateful Widget mempunyai state internal dan akan melakukan render ulang jika terjadi perubahan data input atau perubahan statenya.

### 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Widget yang digunakan pada proyek ini yang sudah disediakan Flutter adalah:
- MaterialApp: Widget yang berfungsi dalam menyediakan struktur dasar dan komponen penting untuk suatu aplikasi Flutter (seperti Routing, Themeing, dan juga Localization).
- Material: Widget yang berfungsi dalam menyediakan efek visual untuk suatu aplikasi Flutter.
- Scaffold: Widget yang berfungsi dalam menyediakan struktur layout visual suatu aplikasi Flutter serta menjadi suatu wadah (container) untuk menyimpan berbagai elemen UI (seperti AppBar, Drawer, SnackBar, dan lain-lain).
- ScaffoldMessenger: Widget yang berfungsi dalam mengatur dan menampilkan Snackbar, MaterialBanner, dan lainnya yang serupa dalam suatu aplikasi Flutter.
- AppBar: Widget yang berfungsi dalam menyediakan suatu toolbar pada ujung atas dari layar yang menampilkan halaman aplikasi Flutter, yang biasanya mengandung judul dari aplikasi/halaman dan actions.
- Icon: Widget yang berfungsi dalam menampilkan suatu ikon.
- GridView: Widget yang berfungsi dalam menyusun child widget dalam suatu layout grid.
- Column: Widget yang berfungsi dalam menyusun child widget dalam posisi vertikal.
- Row: Widget yang berfungsi dalam menyusun child widget dalam posisi horizontal.
- Text: Widget yang berfungsi dalam menampilkan teks dalam suatu aplikasi Flutter dengan style yang dapat dikustomisasi.
- Card: Widget yang berfungsi dalam menciptakan card, suatu wadah atau container yang mengelompokkan konten yang berhubungan pada tampilan halaman aplikasi Flutter.
- InkWell: Widget yang berfungsi dalam menciptakan suatu efek ripple atau gelombang untuk suatu elemen UI saat ditekan.
- Container: Widget yang berfungsi sebagai suatu wadah untuk widget lain serta mengatur layout, ukuran, dekorasi, dan aspek-aspek lain dari widget yang terdapat di dalamnya.
- SnackBar: Widget yang berfungsi dalam menampilkan suatu pesan (sementara) di ujung bawah layar halaman aplikasi Flutter.
- Padding: Widget yang berfungsi dalam membentuk ruang tambahan (space) di sekitar suatu widget.
- Center: Widget yang berfungsi dalam mengatur posisi child widgetnya agar berada di tengah layar halaman aplikasi Flutter.
- SizedBox: Widget yang berfungsi dalam menciptakan suatu wadah box dengan ukuran tertentu.
Widget yang digunakan pada proyek ini yang dibuat sendiri adalah:
- MyApp: Widget utama yang berfungsi dalam menjalankan aplikasi Flutter ini.
- MyHomePage: Widget yang berfungsi dalam mengatur dan menampilkan halaman utama aplikasi Flutter ini.
- ItemCard: Widget yang berfungsi dalam mengatur dan menampilkan suatu tombol (dengan ikon, nama item, dan SnackBar yang muncul saat ditekan) dalam bentuk yang menyerupai card.
- InfoCard: Widget yang berfungsi dalam mengatur dan menampilkan informasi tertentu dalam bentuk yang menyerupai card.

### 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Dalam Flutter, setState() berfungsi dalam memberitahukan framework bahwa terdapat perubahan pada state internal di suatu Stateful Widget sehingga memerlukan proses rebuild terhadap UI untuk menerapkan perubahan yang telah dibuat. Saat setState() dipanggil, Flutter memanggil build() pada widget yang mengalami perubahan state internal tersebut dan memperbarui tampilan halaman aplikasi Flutter dengan perubahan yang dibuat. Variabel yang dapat terdampak dari fungsi tersebut adalah semua variabel bersifat mutable yang didefinisikan di dalam class state dan juga variabel global di luar class state yang digunakan dalam build().

### 4. Jelaskan perbedaan antara const dengan final.
const dan final digunakan dalam Dart untuk membuat variabel yang bersifat immutable (tidak dapat berubah). Salah satu perbedaannya adalah bahwa nilai variabel yang diinisialisasikan dengan final di-set hanya sekali pada runtime, sedangkan nilai variabel yang diinisialisasikan dengan const di-set pada compile time. Nilai pada variabel yang diinisialisasikan dengan final dapat diketahui atau dikalkulasikan saat program berjalan (runtime), sedangkan nilai pada variabel yang diinisialisasikan dengan const sudah harus diketahui saat proses kompilasi (compile time). Objek yang dideklarasikan dengan final dapat mengalami perubahan pada kontennya meskipun reference terhadap objek tersebut pada variabel tidak dapat diubah (seperti menambahkan nilai ke dalam List), sedangkan objek yang dideklarasikan dengan const tidak dapat mengalami perubahan apapun, baik itu pada reference terhadap objek pada variabel ataupun konten dalam objek tersebut.

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
1. Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.
<br>Jawaban:<br>
Saya memutuskan untuk membuat program Flutter baru bernama Bakery Mobile, yang merupakan aplikasi bertema E-Commerce versi mobile dari aplikasi Bakery yang sebelumnya dibuat pada Django. Saya membuat proyek Flutter baru tersebut dengan menjalankan perintah
```bash
flutter create bakery_mobile
```
Setelah memastikan bahwa proyek baru tersebut dapat dijalankan pada Google Chrome, saya kemudian berlanjut ke proses pembuatan code Dart untuk halaman pada aplikasi Flutter ini.

Sebelum menjelaskan pengimplementasian tombol dan SnackBar secara spesifik, perlu dijelaskan pengimplementasian file main.dart dan menu.dart secara general terlebih dahulu.
Untuk file main.dart, terdapat entry point dari aplikasi Bakery Mobile itu melalui fungsi main(). Fungsi main() akan memanggil fungsi runApp() yang akan menjalankan aplikasi tersebut dengan membuat instance dari MyApp. Instance ini akan membantu dalam penjalanan program Flutter Bakery Mobile.
```dart
void main() {
  runApp(const MyApp());
}
```
MyApp merupakan widget yang dibuat untuk meng-extend StatelessWidget, sehingga bersifat statis juga (immutable) dan tidak ada internal state yang berubah. Terdapat method build() pada MyApp yang akan membangun struktur dasar dari aplikasi Flutter yang dijalankan dengan mengembalikan suatu MaterialApp. MaterialApp tersebut memiliki property title 'Bakery Mobile' sebagai judul aplikasi, theme yang mengimplementasikan warna kustom dan memanfaatkan Material Design 3 untuk proses styling, serta home yang menetapkan MyHomePage sebagai halaman utama aplikasi ini.
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bakery Mobile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.deepOrange,
        ).copyWith(secondary: Colors.deepOrange[400]),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
```
Untuk file menu.dart, terdapat berbagai widget dan komponen lainnya yang berfungsi dalam membentuk tampilan dan fungsionalitas pada halaman utama aplikasi Flutter tersebut. Terdapat Stateless Widget MyHomePage yang mengatur tampilan halaman utamanya, widget tersebut mengandung beberapa variabel untuk merepresentasikan data nama, NPM, kelas, dan list bernama items berisi instance ItemHomePage yang akan ditampilkan nanti sebagai tombol pada layar. Pada MyHomePage, terdapat method build() yang membangun Scaffold untuk layout halaman utama di aplikasi. Pada Scaffold, terdapat AppBar yang akan menampilkan toolbar di ujung atas dengan judul dari aplikasinya serta kustomisasi font dan warna. Terdapat juga bagian body di mana terdapat suatu widget Column (dengan Padding) yang memiliki widget Row yang menampilkan informasi NPM, nama, dan kelas dalam 1 baris, widget Column (posisi memanfaatkan Center) yang mengandung suatu pesan teks (dengan Padding), serta widget Gridview untuk menampilkan masing-masing ItemCard dalam layout grid.
```dart
class MyHomePage extends StatelessWidget {
  final String npm = '2306152102';
  final String name = 'Janssen Benedict';
  final String className = 'PBP D';
  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.mood, const Color.fromARGB(255, 62, 155, 65)),
    ItemHomepage("Tambah Produk", Icons.add, const Color.fromARGB(255, 19, 112, 188)),
    ItemHomepage("Logout", Icons.logout, const Color.fromARGB(255, 147, 31, 103)),
  ];
    
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bakery Mobile',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 247, 211),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),

            const SizedBox(height: 16.0),

            Center(
              child: Column(

                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      "Welcome to Janssen's Mobile Bakery",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,

                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```
Kemudian, terdapat Stateless Widget InfoCard yang membentuk struktur dan tampilan dari card informasi NPM, nama, dan kelas dengan property title dan content.
```dart
class InfoCard extends StatelessWidget {

  final String title;
  final String content;
  
  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}
```
Setelah itu, terdapat ItemHomePage yang merepresentasikan item yang akan ditampilkan pada grid sebagai tombol dengan property nama, ikon, dan warna.
```dart
class ItemHomepage {
    final String name;
    final IconData icon;
    final Color color;

    ItemHomepage(this.name, this.icon, this.color);
}
```
Akhirnya, terdapat widget ItemCard yang berguna dalam menampilkan item-item ItemHomePage sebagai tombol. Ada method build() yang akan mengembalikan widget Material yang menentukan efek visual pada card tombol itu. Setiap card ditampilkan dengan warna sesuai isi property warna di instance ItemHomePage itu, terdapat border semi-sirkular, serta terdapat widget Container yang menampung tampilan ikon dan nama dari item ItemHomePage tersebut dan juga SnackBar yang menampilkan pesan sementara bila card ditekan.
```dart
class ItemCard extends StatelessWidget {

  final ItemHomepage item;
  const ItemCard(this.item, {super.key}); 

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}"))
            );
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: const Color.fromARGB(255, 255, 247, 211),
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Color.fromARGB(255, 255, 247, 211)),
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

2. Membuat tiga tombol sederhana dengan ikon dan teks untuk: Melihat daftar produk (Lihat Daftar Produk), menambah produk (Tambah Produk), dan Logout (Logout).
<br>Jawaban:<br>
Tiga tombol sederhana tersebut dapat diimplementasikan dengan ItemHomePage dan ItemCard. Seperti yang sudah dijelaskan sebelumnya, ItemHomePage menyediakan property untuk nama, ikon, dan juga warna dari item yang nanti akan ditampilkan sebagai suatu tombol di halaman utama. Pada widget MyHomePage, dibuatlah suatu list yang berisi instance dari ItemHomePage, masing-masing dengan nama, ikon gambar, dan juga warnanya sendiri.
```dart
...
final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.mood, const Color.fromARGB(255, 62, 155, 65)),
    ItemHomepage("Tambah Produk", Icons.add, const Color.fromARGB(255, 19, 112, 188)),
    ItemHomepage("Logout", Icons.logout, const Color.fromARGB(255, 147, 31, 103)),
  ];
...
```
Kemudian, pada GridView (layout grid) di method build() MyHomePage, masing-masing instance ItemHomePage tersebut dipetakan kepada widget ItemCard agar dapat dibentuk sebagai tombol atau card interaktif kemudian ditampilkan pada layout grid di halaman utama aplikasinya.
```dart
...
children: items.map((ItemHomepage item) {
    return ItemCard(item);
}).toList(),
...
```
Akhirnya, sesuai dengan apa yang dijelaskan sebelumnya, pada method build() di ItemCard, akan dibentuk tampilan card untuk tombol sederhana yang diinginkan dengan memanfaatkan instance ItemHomePage yang dipetakan ke widget ItemCard. Tampilan dari ikon dan nama diatur pada bagian ini. Dengan itu, tiga tombol sederhana tersebut dapat ditampilkan pada halaman utama aplikasi Bakery Mobile.
```dart
...
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: const Color.fromARGB(255, 255, 247, 211),
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Color.fromARGB(255, 255, 247, 211)),
                ),
              ],
            ),
          ),
        ),
...
```

3. Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout).
<br>Jawaban:<br>
Untuk mengimplementasikan warna-warna yang berbeda untuk setiap tombol, properties pada class ItemHomePage harus ditambah property warna.
```dart
class ItemHomepage {
    ...
    final Color color;

    ItemHomepage(this.name, this.icon, this.color);
}
```
Jadi, saat membuat list masing-masing instance ItemHomePage untuk merepresentasikan masing-masing item yang nanti dijadikan tombol, masing-masing item perlu diberikan warna yang unik.
```dart
...
  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.mood, const Color.fromARGB(255, 62, 155, 65)),
    ItemHomepage("Tambah Produk", Icons.add, const Color.fromARGB(255, 19, 112, 188)),
    ItemHomepage("Logout", Icons.logout, const Color.fromARGB(255, 147, 31, 103)),
  ];
...
```
Akhirnya, pada method build() di ItemCard, saat proses membentuk tampilan card untuk tombolnya, property color pada widget Material di-set menjadi sesuai dengan property color pada item ItemHomePage tersebut sehingga card/tombolnya memiliki warna unik sesuai dengan yang diinginkan.
```dart
...
@override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      ...
    );
  }
...
```

4. Memunculkan Snackbar dengan tulisan: "Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol Lihat Daftar Produk ditekan, "Kamu telah menekan tombol Tambah Produk" ketika tombol Tambah Produk ditekan, dan "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.
<br>Jawaban:<br>
Agar dapat memunculkan Snackbar dengan tulisan tersebut saat masing-masing tombol ditekan, pada method build() di ItemCard, perlu ditambahkan berikut ini.
```dart
    child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}"))
            );
        },
        ...
    )
```
Property onTap pada widget Inkwell di-set agar tampilan SnackBar yang mungkin sudah ada pada layar untuk ditutup dan menampilkan SnackBar baru dengan pesan yang menyatakan bahwa tombol/card tersebut telah ditekan.

5. Menjawab beberapa pertanyaan berikut pada README.md pada root_folder.
<br>Jawaban:<br>
Saya menjawab pertanyaan-pertanyaan tersebut pada file README.md di direktori utama proyek ini.

6. Melakukan add-commit-push ke suatu repositori baru di GitHub.
<br>Jawaban:<br>
Setelah memastikan bahwa Tugas 7 telah dikerjakan dengan lengkap, saya melakukan command git add, commit, dan push ke repositori bakery-mobile di GitHub.

<br>

### ---------------------------------------------------------TUGAS 8---------------------------------------------------------

### 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
Di Flutter, kegunaan dari keyword const adalah membuat objek yang tidak dapat berubah (immutable), suatu objek yang seharusnya tidak diubah selama masa pakai dari aplikasi Flutter yang memilikinya tepat menggunakan keyword const saat dideklarasikan. Keuntungan dari penggunaan const pada Flutter diantaranya adalah optimasi kinerja karena objek tersebut hanya perlu ditentukan atau dibuat sekali pada compile time dan digunakan kembali pada runtime tanpa perubahan (compile-time constant). Selain itu, keuntungan lainnya adalah meningkatkan efisiensi penggunaan memory karena Flutter akan selalu merujuk pada satu instance objek (yang dideklarasikan dengan const) tersebut yang sama bila objek tersebut digunakan pada aplikasinya. Oleh karena itu, jumlah alokasi memory selama runtime berkurang karena Flutter tidak perlu membuat instance baru dari objek tersebut setiap kali digunakan. Sebaiknya, const digunakan pada widget yang tidak akan berubah (Stateless Widget) dan nilai-nilai yang tetap (seperti warna, padding, margin, teks, dan elemen lainnya yang tidak diinginkan untuk berubah). const sebaiknya tidak digunakan pada widget yang dapat berubah selama aplikasi berjalan (Stateful Widget) dan nilai-nilai yang dinamis (dapat berubah pada runtime berdasarkan perilaku pengguna atau perubahan data).

### 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Column merupakan widget pada Flutter yang digunakan untuk menyusun sekumpulan widget di dalam property children-nya (child widget) dalam posisi vertikal, terdapat property mainAxisAlignment untuk mengatur posisi widget pada sumbu vertikal dan crossAxisAlignment untuk mengatur posisi widget pada sumbu horizontal. Sementara itu, Row merupakan widget pada Flutter yang digunakan untuk menyusun sekumpulan widget di dalam property children-nya (child widget) dalam posisi horizontal, terdapat property mainAxisAlignment untuk mengatur posisi widget pada sumbu horizontal dan crossAxisAlignment untuk mengatur posisi widget pada sumbu vertikal.
Contoh implementasi dari widget Column terdapat dalam proyek Flutter ini pada bagian body dari Scaffold di method build() widget MyHomePage.
```dart
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ...
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),
            const SizedBox(height: 16.0),
            Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      "Welcome to Janssen's Mobile Bakery",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  ...
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
```
Widget Column utama yang terdapat di dalam widget Padding itu mengatur posisi child widget secara vertikal serta memposisikan child widget di tengah pada sumbu horizontal. Kemudian, salah satu child widget di dalamnya adalah widget Center yang mengatur child widgetnya untuk berada di posisi tengah layar. Salah satu child widget dari widget Center ini adalah widget Column juga, yang akan menampilkan child widgetnya sendiri secara vertikal pada satu kolom teratur. Kemudian, implementasi dari widget Row terdapat dalam proyek Flutter ini pada bagian tersebut juga, sebagai salah satu child widget dari widget Column yang pertama. Widget Row tersebut akan menampilkan tiga widget InfoCard secara horizontal pada satu baris teratur dengan pengaturan bahwa masing-masing widget InfoCard memiliki jarak antar-widget yang sama sepanjang baris tersebut.

### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Elemen input yang saya gunakan pada halaman form yang saya buat (product_form.dart) adalah TextFormField. TextFormField digunakan untuk menciptakan field yang menerima input teks dari pengguna yang mengakses aplikasinya. Pada proyek Flutter ini, TextFormField digunakan untuk menerima input nama, jumlah atau kuantitas, deskripsi, harga, dan kategori produk yang ingin dibuat melalui halaman form untuk menambahkan produk baru. Pada masing-masing TextFormField tersebut, saya mengimplementasikan property seperti maxlength untuk menyatakan batas karakter yang dapat diinput dan juga validator untuk memastikan bahwa input tidak kosong (atau bernilai negatif untuk input harga dan jumlah produk). Elemen input Flutter lain yang tidak digunakan pada tugas ini diantaranya adalah Radio (memberikan beberapa opsi input tunggal dan salah satu opsi dapat dipilih dengan mengklik tombol dengan opsi tersebut), CheckBox (memberikan beberapa opsi input dan beberapa opsi dapat dipilih dengan mencentang kotak dengan opsi tersebut), Slider (memberikan opsi nilai dalam suatu rentang tertentu yang nilainya dapat di-set dengan menetapkan posisi pada slider), Switch (memberikan opsi input boolean yang dapat di-set dengan melakukan toggle pada tombol dengan opsi tersebut), DatePicker (menerima opsi input tanggal dengan date picker dialog), dan TimePicker (menerima opsi input waktu dengan time picker dialog).

### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Pengaturan theme dari aplikasi Flutter agar terlihat konsisten dilakukan pada widget MyApp di main.dart. Pada method build() di widget MyApp, dikembalikan suatu MaterialApp yang menyediakan struktur dasar dan komponen penting untuk aplikasi Flutter ini. Di MaterialApp tersebut, terdapat property theme untuk merepresentasikan theme dari aplikasi ini. Theme dari aplikasi diatur menggunakan ThemeData, yang sudah di-set untuk mengatur skema warna utama dan sekunder aplikasi ini dan juga menggunakan Material Design 3 untuk proses styling.
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bakery Mobile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.deepOrange,
        ).copyWith(secondary: Colors.deepOrange[400]),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
```

### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Proses navigasi dalam aplikasi ini dilakukan dengan widget Navigator, yang berfungsi dalam mengatur navigasi dan menampilkan halaman-halaman yang ada ke layar seperti sebuah stack. Navigator diakses melalui BuildContext dan memanggil fungsi atau method tertentu untuk melakukan proses navigasi, seperti push(), pop(), dan pushReplacement(). Method push() menambahkan suatu route ke stack route yang dikelola Navigator dan ditampilkan kepada pengguna pada layar. Method pop() menghapus route yang berada di posisi paling atas pada stack route (yang sedang ditampilkan ke pengguna) sehingga tampilan halaman aplikasi pada layar berpindah ke route yang berada di bawah route yang dihapus pada stack route. Method pushReplacement() menghapus route yang sedang ditampilkan ke pengguna pada layar dan menggantikannya dengan route lain, jadi tampilan layar akan berubah ke route yang menggantikan route yang dihapus.
Pada product_card.dart, di widget ItemCard, terdapat method build(). Method itu mengembalikan suatu widget Material yang membentuk card tombol yang ingin ditampilkan pada halaman utama. Pada property onTap di widget Inkwell pada bagian child di widget Material, dinyatakan bahwa jika item ItemHomePage yang ingin dibentuk menjadi tombol itu merupakan tombol untuk menambah produk baru, maka halaman form untuk menambah produk baru akan ditampilkan kepada pengguna saat tombol itu ditekan.
```dart
  @override
  Widget build(BuildContext context) {
    return Material(
      ...
      child: InkWell(
        onTap: () {
          ...
          if (item.name == "Tambah Produk") {
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => const ProductFormPage(),
              ),
            );
          }
        },
        ...
      ),
    );
  }
```
Pada left_drawer.dart, di widget LeftDrawer, terdapat method build(). Method itu mengembalikan widget Drawer yang akan membentuk suatu Drawer di sebelah kiri layar yang dapat ditampilkan untuk mengakses halaman utama dan halaman untuk menambah produk baru. Oleh karena itu, di dalam spesifikasi widget Drawer tersebut, terdapat dua widget ListTitle untuk membentuk dua item pada drawer tersebut, yaitu item-item dengan judul "Halaman Utama" dan "Tambah Item" yang masing-masing akan menampilkan halaman utama dan halaman untuk menambahkan produk baru bila ditekan.
```dart
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ...
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.mood),
            title: const Text('Tambah Item'),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const ProductFormPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
```
Pada product_form.dart, terdapat _ProductFormPageState dengan method build(). Method ini akan mengembalikan widget Scaffold yang akan membangun atau mengatur halaman form untuk menambah produk baru. Di dalam pengaturan elemen-elemen yang terdapat pada Scaffold tersebut, dispesifikasikan bahwa setelah pengguna mengisi field input untuk produk baru serta menekan tombol "Save", program akan melakukan proses validasi terhadap input tersebut. Jika data yang diinput sudah valid, maka akan muncul suatu dialog (dengan widget AlertDialog) yang akan menyatakan informasi detail mengenai produk yang baru saja dibuat. Karena fungsi showDialog() digunakan, suatu route baru ditambahkan ke stack route, dan route tersebut menampilkan dialog dengan detail produk itu. Pada dialog tersebut, terdapat tombol "OK". Bila tombol itu ditekan, route yang baru saja ditambahkan ke stack route dihapus dan menampilkan kembali halaman untuk menambah produk baru kepada pengguna.
```dart
      ...
      if (_formKey.currentState!.validate()) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              ...
              actions: [
                TextButton(
                  child: const Text('OK'),
                  onPressed: () {
                    Navigator.pop(context);
                    _formKey.currentState!.reset();
                  },
                ),
              ],
            );
          },
        );
      }
      ...
```