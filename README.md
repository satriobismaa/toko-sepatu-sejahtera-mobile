<details>
<Summary><b>Tugas 7</b></Summary>
<ol>
    <li>Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget?
    <br>
    <br>
    Widget tree adalah struktur hierarki (pohon) yang digunakan oleh Flutter untuk menggambarkan tata letak dan tampilan antarmuka (UI) dari aplikasi. Setiap elemen UI dalam Flutter direpresentasikan sebagai widget, dan widget-widget ini diatur dalam bentuk pohon di mana setiap widget dapat memiliki satu atau lebih widget anak (child widgets). 
    <br>
    <br>
    Hubungan parent-child bekerja dengan cara widget induk (parent) dapat mengandung widget anak (child) di dalamnya. Widget induk bertanggung jawab untuk mengatur tata letak, gaya, dan perilaku dari widget anaknya. Misalnya, sebuah widget Column (induk) dapat berisi beberapa widget Text (anak) yang ditampilkan secara vertikal. Dengan demikian, perubahan pada widget induk dapat mempengaruhi tampilan dan perilaku dari widget anaknya.
    </li>
    <br>
    <br>
    <li>
     Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya!
        <br>
        <ul>    
            <li>MyApp: Widget utama yang menjalankan aplikasi Flutter.</li>
            <li>MaterialApp: Widget utama yang mengatur tema dan navigasi aplikasi.</li>
            <li>MyHomePage: Widget yang menampilkan halaman utama aplikasi.</li>
            <li>Scaffold: Menyediakan struktur dasar untuk halaman, termasuk AppBar dan body.</li>
            <li>AppBar: Menampilkan bilah judul di bagian atas halaman.</li>
            <li>Text: Menampilkan teks di layar.</li>
            <li>Column: Mengatur widget anak secara vertikal.</li>
            <li>Row: Mengatur widget anak secara horizontal.</li>
            <li>SizedBox: Memberikan ruang kosong dengan ukuran tertentu.</li>
            <li>Center: Memusatkan widget anak di dalamnya.</li>
            <li>Padding: Memberikan ruang di sekitar widget anak.</li>
            <li>GridView: Menampilkan daftar item dalam format grid.</li>
            <li>InfoCard: Widget khusus untuk menampilkan informasi dengan ikon dan teks.</li>
            <li>Card: Membuat kartu dengan sudut melengkung untuk menampilkan informasi.</li>
            <li>Container: Widget container untuk menyimpan Icon dan Text</li>
            <li>Icon: Menampilkan ikon grafis di dalam aplikasi.</li>
            <li>ItemCard: Widget khusus untuk menampilkan kartu dengan ikon dan nama.</li>
            <li>Material: Menyediakan elemen material design seperti warna dan bentuk.</li>
            <li>InkWell: Menyediakan efek sentuhan pada widget anak.</li>
        </ul>
    </li>
    <br>
    <li> Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
    <br>
    <br>
    MaterialApp adalah widget utama dalam Flutter yang menjadi struktur utama aplikasi. Fungsi utama dari MaterialApp adalah untuk menyediakan kerangka kerja dasar yang mengatur tema, navigasi, dan elemen-elemen material design dalam aplikasi. Widget ini sering digunakan sebagai widget root karena beberapa alasan berikut:
    <br>
    <ul>
        <li>Pengaturan Tema: MaterialApp memungkinkan pengembang untuk mengatur tema global aplikasi, termasuk warna, font, dan gaya visual lainnya yang konsisten di seluruh aplikasi.</li>
        <li>Navigasi: MaterialApp menyediakan sistem navigasi yang mudah digunakan, memungkinkan pengembang untuk menambahkan rute dan mengelola perpindahan antar halaman dengan mudah.</li>
        <li>Menjadi Titik Masuk (Root Widget): Biasanya runApp() hanya menerima satu widget sebagai argumen, dan MaterialApp sering dipilih sebagai widget root karena menyediakan banyak fitur penting yang diperlukan untuk membangun aplikasi yang baik.</li>
    </ul>
    </li>
    <br>
    <br>
    <li> Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya? 
    <br>
    <br>
    Perbedaan utama antara StatelessWidget dan StatefulWidget adalah kemampuan mereka untuk meyimpan dan mengelola state (keadaan) yang dapat berubah selama siklus hidup widget. StatelessWidget adalah widget yang tidak memiliki state yang dapat berubah setelah dibuat. Artinya, tampilan widget ini tetap konstan dan tidak dapat diperbarui secara dinamis, jenis ini cocok jika widget tidak memerlukan perubahan. Sedangkan, StatefulWidget adalah widget yang memiliki state yang bisa berubah selama aplikasi berjalan sehingga cocok digunakan untuk elemen UI yang memerlukan interaksi atau perubahan data, seperti teks statis atau ikon.
    </li>
    <br>
    <br>
    <li> Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
    <br>
    <br>
    BuildContext adalah objek yang memberikan informasi mengenai lokasi sebuah widget dalam widget tree. Objek ini penting di Flutter karena memungkinkan flutter untuk tahu widget yang mana yang harus diubah ketika ada perubahan state. BuildContext juga digunakan agar widget dapat mewarisi properti dari widget induknya, seperti tema atau ukuran layar. Dalam metode build, BuildContext digunakan sebagai parameter untuk mengakses informasi tentang lingkungan widget, seperti tema, ukuran layar, dan navigasi. Dengan menggunakan BuildContext, widget dapat menyesuaikan tampilannya berdasarkan konteks di mana mereka berada dalam aplikasi.
    </li>
    <br>
    <br>
    <li> Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
    <br>
    <br>
    Hot reload adalah fitur di Flutter yang memungkinkan pengembang untuk melihat perubahan kode secara instan tanpa harus memulai ulang seluruh aplikasi. Ketika hot reload dilakukan, Flutter hanya memperbarui bagian kode yang telah diubah, sehingga state aplikasi tetap terjaga. Ini sangat berguna untuk pengembangan cepat dan iterasi desain UI.
    <br>
    <br>
    Sedangkan, hot restart adalah proses yang lebih menyeluruh dimana Flutter akan memulai ulang seluruh aplikasi dari awal. Hot restart akan menghapus semua state yang ada dan memulai ulang aplikasi, sehingga semua perubahan kode akan diterapkan dari awal. Hot restart biasanya digunakan ketika ada perubahan besar pada struktur aplikasi atau ketika state aplikasi perlu direset.
    </li>
</ol>

</details>

<details>
<Summary><b>Tugas 8</b></Summary>
<ol>
    <li>
        Jelaskan perbedaan antara Navigator.push() dan Navigator.            pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
        <br>
        <br>
        Perbedaannya terletak pada cara mereka mengelola tumpukan (stack) halaman dalam aplikasi. Navigator.push() menambahkan halaman baru di atas halaman saat ini, memungkinkan pengguna untuk kembali ke halaman sebelumnya dengan menekan tombol kembali. Sebaliknya, Navigator.pushReplacement() menggantikan halaman saat ini dengan halaman baru, sehingga pengguna tidak dapat kembali ke halaman sebelumnya.
        <br>
        <br>
        Dalam aplikasi Football Shop, Navigator.push() sebaiknya digunakan ketika pengguna menavigasi ke halaman detail produk dari halaman daftar produk, sehingga mereka dapat kembali ke daftar produk setelah melihat detail. Sedangkan Navigator.pushReplacement() sebaiknya digunakan ketika pengguna menyelesaikan proses pembelian dan diarahkan ke halaman konfirmasi, karena setelah pembelian selesai, mereka tidak perlu kembali ke halaman checkout.
    </li>
    <br>
    <br>
    <li>
        Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
        <br>
        <br>
        Saya menggunakan Scaffold sebagai kerangka dasar untuk setiap halaman dalam aplikasi, yang menyediakan area untuk:
        <ul>
            <li>AppBar: Saya menempatkan AppBar di bagian atas Scaffold untuk menampilkan judul halaman dan menyediakan navigasi utama.</li>
            <li>Drawer: Saya menambahkan Drawer ke Scaffold untuk menyediakan menu navigasi samping yang konsisten di seluruh aplikasi, memungkinkan pengguna untuk dengan mudah mengakses berbagai bagian aplikasi.</li>
            <li>Body: Saya menggunakan area body dari Scaffold untuk menampilkan konten utama halaman, memastikan bahwa tata letak dan gaya tetap konsisten di seluruh aplikasi.</li>
        </ul>
    </li>
    <br>
    <br>
    <li>    
        Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.
        <br>
        <br>
        Kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView adalah:
        <ul>
            <li>Padding: Memberikan ruang di sekitar elemen form, meningkatkan keterbacaan dan estetika antarmuka. Contohnya, saya menggunakan Padding di sekitar TextFormField untuk memberikan jarak antara input field dan elemen lainnya. Contohnya
            <code>padding: const EdgeInsets.all(8.0)</code> </li>
            <li>SingleChildScrollView: Memungkinkan konten form yang panjang untuk digulir, sehingga pengguna dapat mengakses semua elemen form tanpa terpotong. Saya menggunakannya di popup setelah mengeklik tombol save sehingga konten di popup dapat digulir jika melebihi layar</li>
            <li>ListView: Menyediakan cara yang efisien untuk menampilkan daftar elemen form yang dapat digulir, terutama ketika jumlah elemen tidak tetap. Dalam kode ini saya tidak menggunakan ListView dikarenakan daftar formnya tidak sejenis sehingga saya menggunakan Column + SingleChildScrollView yang lebih cocok ketika form berisi berbagai jenis input</li>
        </ul>
    </li>
    <br>
    <br>
    <li>
        Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
        <br>
        <br>
        Saya menyesuaikan warna tema aplikasi Football Shop dengan mengatur primarySwatch dan secondary color di dalam ThemeData pada widget MaterialApp. Saya memilih warna hijau sebagai warna utama (primarySwatch) dan warna hijau juga sebagai warna sekunder (secondary) untuk mencerminkan identitas visual toko. Lalu, karena MaterialApp adalah widget root, maka seluruh aplikasi akan mewarisi tema ini. Dengan cara ini, semua elemen UI yang menggunakan tema ini akan memiliki konsistensi warna yang sesuai dengan brand toko.
    </li>
</ol>
</details>