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
- MaterialApp: Widget yang berfungsi dalam menyediakan struktur dasar dan komponen penting untuk suatu aplikasi Flutter (seperti Routing, Themeing, dan juga Localization).
- Scaffold: Widget yang berfungsi dalam menyediakan struktur layout visual suatu aplikasi Flutter serta menjadi suatu wadah (container) untuk menyimpan berbagai elemen UI (seperti AppBar, Drawer, SnackBar, dan lain-lain).
- AppBar: Widget yang berfungsi dalam menyediakan suatu toolbar pada ujung atas dari layar yang menampilkan halaman aplikasi Flutter, yang biasanya mengandung judul dari aplikasi/halaman dan actions.
- Icon: 
- GridView:
- Column
- Row:
- Text:
- Card:
- InkWell:
- Container:
- SnackBar:
- Padding:
- 

### 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Dalam Flutter, setState() berfungsi dalam memberitahukan framework bahwa terdapat perubahan pada state internal di suatu Stateful Widget sehingga memerlukan proses rebuild terhadap UI untuk menerapkan perubahan yang telah dibuat. Saat setState() dipanggil, Flutter memanggil build() pada widget yang mengalami perubahan state internal tersebut dan memperbarui tampilan halaman aplikasi Flutter dengan perubahan yang dibuat. Variabel yang dapat terdampak dari fungsi tersebut adalah semua variabel bersifat mutable yang didefinisikan di dalam class state dan juga variabel global di luar class state yang digunakan dalam build().

### 4. Jelaskan perbedaan antara const dengan final.
const dan final digunakan dalam Dart untuk membuat variabel yang bersifat immutable (tidak dapat berubah). Salah satu perbedaannya adalah bahwa nilai variabel yang diinisialisasikan dengan final di-set hanya sekali pada runtime, sedangkan nilai variabel yang diinisialisasikan dengan const di-set pada compile time. Nilai pada variabel yang diinisialisasikan dengan final dapat diketahui atau dikalkulasikan saat program berjalan (runtime), sedangkan nilai pada variabel yang diinisialisasikan dengan const sudah harus diketahui saat proses kompilasi (compile time). Objek yang dideklarasikan dengan final dapat mengalami perubahan pada kontennya meskipun reference terhadap objek tersebut pada variabel tidak dapat diubah (seperti menambahkan nilai ke dalam List), sedangkan objek yang dideklarasikan dengan const tidak dapat mengalami perubahan apapun, baik itu pada reference terhadap objek pada variabel ataupun konten dalam objek tersebut.

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
