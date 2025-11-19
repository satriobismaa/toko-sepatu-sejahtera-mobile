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

<details>
<Summary><b>Tugas 9</b></Summary>
<ol>
    <li> 
        Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map (String, dynamic) tanpa model (terkait validasi tipe, null-safety, maintainability)?
        <br>
        <br>
        Pembuatan model Dart yang digunakan saat mengambil dan mengirim data berfungsi sebagai blueprint atau skema yang menentukan struktur data yang diharapkan dari backend (API). Saat Anda menerima JSON  Map&lt;String, dynamic&gt;, model ini bertanggung jawab untuk mengubahnya menjadi objek Dart yang benar. Jika kita langsung memetakan Map&lt;String, dynamic&gt; tanpa model, yang akan terjadi adalah:
        <br>
        <br>
        <ul>
            <li>
                Validasi Tipe Data dan Keamanan (Type Safety)
                <br>
                Data diakses sebagai Map&lt;String, dynamic&gt;['price']. Dart hanya tahu bahwa nilainya adalah dynamic. Jika backend mengirimkan harga sebagai string ("Rp5000") padahal kode Anda mengharapkan int, Anda akan mendapatkan runtime error (Type Error) saat mencoba melakukan operasi matematika.
            </li>
            <br>
            <li>
                Null Safety yang Lemah
                <br>
                Kita harus secara manual memeriksa setiap key untuk null di setiap tempat kita mengakses data: <code>if (data['price'] != null) { ... }</code>. Jika kita lupa, kode bisa crash.
            </li>
            <br>
            <li>
                Kesulitan Pemeliharaan (Maintainability)
                <br>
                Jika backend mengubah nama field (misalnya dari thumbnail menjadi image_url), kita harus mencari dan memperbarui string key ('thumbnail') di setiap tempat kita menggunakan data tersebut.
                <br>
            </li>
        </ul>
    </li>
    <br>
    <br>
    <li>
        Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
        <br>
        <br>
        Package <code>http</code> dan <code>CookieRequest</code> (<code>pbp_django_auth</code>) keduanya berfungsi untuk melakukan komunikasi jaringan (HTTP requests), tetapi memiliki peran yang berbeda dalam konteks tugas ini:
        <br>
        <br>
        <ol>
            <li>
                Fungsi <code>package:http</code>
                <ul>
                    <li>Mengirim permintaan (requests) HTTP (GET, POST, PUT, DELETE) ke server.</li>
                    <li>Menerima tanggapan (responses) HTTP.</li>
                    <li>Mengelola headers dan body permintaan/tanggapan.</li>
                </ul>
                Intinya: <code>package:http</code> menyediakan alat level rendah (low-level) untuk konektivitas jaringan dasar.
            </li>
            <br>
            <li>
                Fungsi <code>CookieRequest</code> (<code>pbp_django_auth</code>) 
                <ul>
                    <li><b>Mengelola Cookies:</b> Secara otomatis menyimpan cookies yang diterima dari server (setelah login berhasil) dan melampirkannya kembali ke setiap permintaan berikutnya.</li>
                    <li><b>Mengelola CSRF Token</b>: Secara otomatis menangani Cross-Site Request Forgery (CSRF) token yang dibutuhkan oleh Django untuk permintaan POST, PUT, atau DELETE.</li>
                    <li><b>Metode Autentikasi Khusus</b>: Menyediakan metode helper seperti login(), logout(), dan get() yang sudah dikonfigurasi untuk format respons standar Django.</li>
                </ul>
                Intinya: <code>CookieRequest</code> adalah pembungkus (wrapper) level tinggi (high-level) yang mengotomatisasi proses autentikasi dan pengelolaan sesi dengan server Django.
            </li>
        </ol>
    </li>
    <br>
    <br>
    <li>
        Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
        <br>
        <br>
        Instance dari <code>CookieRequest</code> perlu dibagikan ke semua komponen (widget) di aplikasi Flutter, karena instance tersebut berfungsi sebagai penyimpan sesi global yang mengelola autentikasi pengguna. Setelah pengguna berhasil login, <code>CookieRequest</code> secara otomatis menyimpan session cookies dari server Django dan melampirkan cookies tersebut ke setiap permintaan API berikutnya; tanpa single shared instance ini, setiap widget yang melakukan request baru, tidak memiliki session cookie sehingga server tidak akan mengenali user tersebut sebagai authenticated dan memaksa user untuk login
    </li>
    <br>
    <br>
    <li>
        Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
        <br>
        <br>
        Konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan backend Django melibatkan penyesuaian di sisi Django (server) dan sisi Flutter/Android (client) untuk mengatasi masalah keamanan jaringan, cross-origin requests, dan identifikasi localhost yang berbeda di emulator.
        <br>
        <br>
        Konfigurasi Konektivitas yang Diperlukan:
        <ol>
            <li>Di Sisi Django (Backend)
                <ul>
                    <li><code>ALLOWED_HOSTS</code>: Daftar host yang diizinkan untuk melayani aplikasi Django.
                        <ul>
                            <li><b>Perlunya </b><code>10.0.2.2</code>: Android Emulator menggunakan alamat IP khusus <code>10.0.2.2</code> untuk merujuk kembali ke alamat loopback (atau localhost) mesin host pengembangan Anda. Tanpa menambahkan <code>10.0.2.2</code> ke <code>10.0.2.2</code>, Django akan menolak permintaan HTTP yang datang dari emulator tersebut.</li>
                            <li><b>Perlunya</b> <code>127.0.0.1</code> atau localhost: Ini diperlukan untuk pengujian langsung dari browser atau tools lain
                        </ul>
                    </li>
                    <br>
                    <li><b>Mengaktifkan CORS (Cross-Origin Resource Sharing)</b>:
                        <br>
                        CORS memungkinkan Django untuk secara eksplisit mengizinkan permintaan dari domain atau origin tertentu (seperti localhost Flutter atau emulator 10.0.2.2) dengan menambahkan header yang sesuai di respons HTTP.
                    </li>
                    <br>
                    <li><b>Pengaturan SameSite/Cookie</b>
                        <br>
                        Agar sesi autentikasi dan CSRF token berfungsi dengan benar, Django harus dikonfigurasi untuk mengirim cookies yang dapat digunakan oleh aplikasi client. Secara modern, SameSite cookies (misalnya <code>SameSite=Lax</code> atau <code>None</code> dengan <code>Secure</code>) membatasi pengiriman cookies lintas-situs, yang dapat memblokir autentikasi. Kita perlu menyesuaikan <code>SESSION_COOKIE_SAMESITE</code> atau <code>CSRF_COOKIE_SAMESITE</code> di <code>settings.py</code>.
                    </li>
                </ul>
            </li>
            <br>
            <li>
                Di Sisi Flutter/Android (Client)
                <ul>
                    <li><b>Izin Akses Internet di Android</b>:
                        <ul>
                            <li><b>Keperluan Izin</b>: Secara default, aplikasi Android tidak memiliki izin untuk melakukan operasi jaringan. Untuk memungkinkan Flutter (yang berjalan di Android) mengirim permintaan HTTP, kita harus mendeklarasikan izin <code>android.permission.INTERNET</code>.
                            </li>
                            <li><b>Lokasi</b>: Izin ini ditambahkan di file <code>AndroidManifest.xml</code> di dalam folder <code>android/app/src/main/</code>.
                        </ul>
                    </li>
                </ul>
            </li>
        </ol>   
        <br>
        Jika konfigurasi di atas tidak dilakukan dengan benar, aplikasi akan menghadapi kegagalan komunikasi yang spesifik:
        <ul>
            <li><b>Gagal Menambahkan</b> <code>10.0.2.2</code>
                <br>
                Permintaan dari Android Emulator akan ditolak oleh Django dengan error "DisallowedHost at /" (kode 400 Bad Request).
            </li>
            <br>
            <li><b>Gagal Mengaktifkan CORS</b>
                <br>
                Permintaan akan diblokir oleh kebijakan cross-origin (terutama pada lingkungan web atau desktop), seringkali menghasilkan error jaringan atau respons kosong.
            </li>
            <br>
            <li><b>Gagal Mengatur Cookie</b>/<code>SameSite</code>
                <br>
                Proses login akan gagal karena session cookie (untuk autentikasi) atau CSRF token tidak dapat disimpan atau dikirim kembali oleh aplikasi Flutter. User tidak bisa login atau melakukan permintaan POST yang aman.
            </li>
            <br>
            <li><b>Gagal Menambahkan Izin Internet</b>
                <br>
                Aplikasi akan crash saat mencoba request HTTP atau menunjukkan error seperti <code>SocketException: Failed host lookup</code> karena sistem operasi Android memblokir akses jaringan.
            </li>
        </ul>
    </li>
    <br>
    <br>
    <li>
        Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
        <br>
        <br>
        <ol>
            <li><b>Tahap Input dan Pengiriman Data (Flutter ke Django)</b>
                <ol>
                    <li><b>Input Pengguna</b>: Pengguna memasukkan data (misalnya, nama produk, harga, deskripsi) melalui widget form di Flutter.</li>
                    <li><b>Pembuatan Objek Data</b>: Data dikumpulkan dan diorganisir ke dalam Map Dart, mengikuti struktur yang diharapkan oleh backend.
                    <li><b>Konversi ke JSON</b>: Sebelum dikirim, objek data (atau Map Dart) harus diubah menjadi string JSON. Ini dilakukan menggunakan metode <code>toJson()</code> yang didefinisikan dalam model Dart proyek atau secara manual menggunakan <code>dart:convert</code>.</li>
                    <li><b>Permintaan POST</b>: Aplikasi Flutter menggunakan instance <code>CookieRequest</code> (atau <code>package:http</code>) untuk mengirim permintaan POST ke endpoint API Django yang sesuai (misalnya, <code>/create-product/</code>). Data JSON string dikirim sebagai body permintaan.</li>
                </ol>
            </li>
            <br>
            <li><b>Tahap Pemrosesan dan Penyimpanan Data (Django)</b>
                <ol>
                    <li><b>Penerimaan Permintaan</b>: Backend Django menerima permintaan POST.</li>
                    <li><b>Validasi dan Penyimpanan</b>: Django membaca body permintaan (JSON), memvalidasi isinya, dan menyimpannya sebagai record baru di database (melalui model Django).</li>
                    <li><b>Tanggapan (Response)</b>: Django merespons dengan response keberhasilan (misalnya, status 201 Created) atau status 200 OK, seringkali menyertakan data record yang baru dibuat dalam format JSON.</li>
                </ol>
            </li>
            <br>
            <li><b>Tahap Pengambilan dan Tampilan Data (Django ke Flutter)</b>
                <ol>
                    <li><b>Permintaan GET (Flutter)</b>: Halaman <code>ProductEntryListPage</code> menggunakan widget <code>FutureBuilder</code> untuk memanggil fungsi yang melakukan permintaan GET menggunakan <code>CookieRequest</code> ke endpoint data JSON Django (misalnya, <code>/json/</code>).</li>
                    <li><b>Pengiriman Data (Django)</b>: Django mengambil data dari database, mengkonversinya menjadi string JSON menggunakan serializer (misalnya, <code>serializers.serialize('json', queryset)</code>), dan mengirimkannya sebagai response HTTP.</li>
                    <li><b>Penerimaan dan Decoding</b>: Aplikasi Flutter menerima response JSON. Data ini awalnya adalah string JSON. Flutter menggunakan json.<code>decode()</code> (dari <code>dart:convert</code>) untuk mengubah string tersebut menjadi struktur data Dart, yaitu <code>ListMap&lt;String, dynamic&gt;</code>.</li>
                    <li><b>Konversi ke Objek Model</b>: Ini adalah langkah terpenting. Flutter melakukan deserialization dengan mengulang (looping) setiap Map di dalam list tersebut dan memanggil factory constructor <code>ProductEntry.fromJson()</code> yang telah Anda definisikan.</li>
                    <li><b>Pembaruan UI</b>: FutureBuilder menerima <code>List&lt;ProductEntry&gt;</code> yang sudah valid dan aman secara tipe. Data ini kemudian diteruskan ke <code>GridView.builder</code> dan <code>ProductEntryCard</code> untuk ditampilkan kepada pengguna.</li>
                </ol>
            </li>
        </ol>
    </li>
    <br>
    <br>
    <li>
        Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
        <ol>
            <li><b>Proses Registrasi (Register)</b>
                <ol>
                    <li><b>Input Data (Flutter)</b>: User memasukkan data seperti username, email, dan password di halaman register Flutter. Data ini dikumpulkan menjadi dictionary atau map Dart.</li>
                    <li><b>Permintaan POST (Flutter)</b>: Aplikasi Flutter menggunakan instance <code>CookieRequest</code> untuk mengirim permintaan POST ke endpoint registrasi Django (misalnya, <code>/auth/register/</code>).</li>
                    <li><b>Validasi dan Penyimpanan (Django)</b>: Django menerima data, memvalidasi isinya, membuat hash password (misalnya menggunakan PBKDF2), dan menyimpan record pengguna baru ke database.</li>
                    <li><b>Tanggapan (Response)</b>: Django mengirimkan response keberhasilan (misalnya, status 201 Created atau JSON <code>{status: true}</code>) kembali ke Flutter. Flutter menampilkan notifikasi sukses.</li>
                </ol>
            </li>
            <br>
            <li><b>Proses Login (Autentikasi Sesi)</b>
                <ol>
                    <li><b>Input Data (Flutter)</b>: Pengguna memasukkan username dan password di halaman login.</li>
                    <li><b>Permintaan POST (Flutter)</b>: Aplikasi Flutter menggunakan <code>CookieRequest</code> untuk mengirim permintaan POST ke endpoint login Django (misalnya, <code>/auth/login/</code>). <code>CookieRequest</code> secara otomatis memastikan adanya header yang benar (termasuk CSRF token jika diperlukan).</li>
                    <li><b>Verifikasi (Django)</b>: Django menerima data, memverifikasi username dan password yang di-hash dengan database.</li>
                    <li><b>Pembuatan Sesi (Django):</b> ika verifikasi berhasil, Django akan membuat sesi unik untuk pengguna tersebut di database dan di memori server dan mengirim kembali header <code>Set-Cookie</code> ke Flutter.</li>
                    <li><b>Pengelolaan Sesi (CookieRequest)</b>: <code>CookieRequest</code> pada Flutter mencegat header <code>Set-Cookie</code> ini dan menyimpan session cookie (dan CSRF token) secara internal dalam instance <code>CookieRequest</code></li> yang dibagikan. Ini adalah langkah paling krusial.</li>
                    <li><b>Menampilkan Menu (Flutter)</b>: Setelah cookie sesi berhasil disimpan, Flutter menavigasi pengguna ke <code>MyHomePage</code> (menu utama), yang sekarang dapat mengakses data yang memerlukan autentikasi.</li>
                </ol>
            </li>
            <br>
            <li><b>Proses Akses Data Terautentikasi (GET)</b>
                <ol>
                    <li><b>Permintaan GET (Flutter)</b>: <code>MyHomePage</code> atau <code>ProductEntryListPage</code> meminta data produk (misalnya, <code>/json/</code>).</li>
                    <li><b>Pelampiran Cookie (CookieRequest)</b>: Sebelum mengirim request, instance <code>CookieRequest</code> secara otomatis melampirkan session cookie yang disimpannya saat login ke header permintaan.
                    <li><b>Verifikasi Sesi (Django)</b>: Django menerima request dan membaca cookie yang dilampirkan. Django mencocokkan cookie ini dengan sesi yang tersimpan, dan jika valid, Django mengenali pengguna dan memproses request.</li>
                    <li><b>Tanggapan Data</b>: Django mengembalikan data JSON yang diminta (misalnya, daftar <code>ProductEntry</code> yang difilter).</li>
                </ol>
            </li>
            <br>
            <li><b>Proses Logout (Menghancurkan Sesi)</b>
                <ol>
                    <li><b>Permintaan POST/GET (Flutter)</b>: User menekan tombol Logout di LeftDrawer. <code>CookieRequest</code> mengirim request ke endpoint logout Django (misalnya, <code>/auth/logout/</code>).</li>
                    <li><b>Penghancuran Sesi (Django)</b>: Django menerima request, dan karena cookie sesi valid, Django menghancurkan sesi pengguna yang terkait di sisi server (menghapus session record).</li>
                    <li><b>Penghapusan Cookie (CookieRequest)</b>: Django dapat mengirim header yang memberitahu client untuk menghapus cookie, atau <code>CookieRequest</code> secara internal membersihkan session cookie yang tersimpan di dalam instance-nya, membuat sesi tersebut invalid.</li>
                    <li><b>Redireksi (Flutter)</b>: Flutter menampilkan notifikasi logout sukses dan menavigasi pengguna kembali ke <code>LoginPage</code>. Instance <code>CookieRequest</code> yang sekarang kosong membuat semua request selanjutnya dianggap tidak terautentikasi.
                </ol>
            </li>
        </ol>
    </li>
    <br>
    <br>
    <li>
        Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
        <ol>
            <li>Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
                <br>
                <ol>
                    <li>
                        Buat virtual environment
                        <ol>
                            <li><code>python -m venv venv</code></li>
                            <li>Aktifkan environment — Windows: <code>venv\Scripts\activate</code>; macOS/Linux: <code>source venv/bin/activate</code></li>
                        </ol>
                    </li>
                    <li>
                        Pasang dependensi
                        <ol>
                            <li><code>pip install -r requirements.txt</code></li>
                        </ol>
                    </li>
                    <li>
                        Konfigurasi variabel lingkungan
                        <ol>
                            <li>Buat file <code>.env</code> atau set environment variables: <code>SECRET_KEY</code>, <code>DEBUG</code>, <code>DATABASE_URL</code>, <code>ALLOWED_HOSTS</code>.</li>
                            <li>Tambahkan <code>10.0.2.2</code> ke <code>ALLOWED_HOSTS</code> saat menggunakan Android emulator.</li>
                        </ol>
                    </li>
                    <li>
                        Siapkan database dan migrasi
                        <ol>
                            <li><code>python manage.py migrate</code></li>
                            <li>(Opsional) buat superuser: <code>python manage.py createsuperuser</code></li>
                        </ol>
                    </li>
                    <li>
                        Pengaturan untuk pengujian dari emulator/klien
                        <ol>
                            <li>Jalankan server agar menerima koneksi dari emulator: <code>python manage.py runserver 0.0.0.0:8000</code></li>
                            <li>Gunakan URL <code>http://10.0.2.2:8000/</code> di Flutter saat mengakses server lokal dari Android emulator.</li>
                        </ol>
                    </li>
                    <li>
                        Verifikasi cepat
                        <ol>
                            <li>Pastikan server merespons: <code>curl -I http://127.0.0.1:8000/</code> atau buka URL di browser.</li>
                            <li>Periksa logs dan perbaiki error sebelum melanjutkan pengembangan Flutter.</li>
                        </ol>
                    </li>
                </ol>  
            </li>
            <br>
            <li> Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.
                <ol>
                    <li>Buat halaman registrasi baru
                        <ol>
                            <li>Buat file baru <code>register.dart</code> di folder <code>lib/screens/</code></li>
                            <li>Buat class <code>RegistrerPage</code> sebagai <code>StatefulWidget</code> karena memerlukan pengelolaan state untuk form input</li>
                        </ol>
                    </li>
                    <li>Desain UI form registrasi
                        <ol>
                            <li>Gunakan <code>Scaffold</code> dengan <code>AppBar</code> untuk judul halaman</li>
                            <li>Tambahkan <code>SingleChildScrollView</code> untuk menangani form yang panjang</li>
                            <li>Gunakan <code>Column</code> dengan <code>Padding</code> untuk menata elemen form secara vertikal</li>
                            <li>Buat <code>TextFormField</code> untuk input username, password, dan konfirmasi password</li>
                            <li>Tambahkan tombol registrasi (<code>ElevatedButton</code>) di bagian bawah form</li>
                        </ol>
                    </li>
                    <li>Implementasikan validasi form
                        <ol>
                            <li>Gunakan <code>GlobalKey&lt;FormState&gt;</code> untuk mengelola state form</li>
                            <li>Tambahkan validator pada setiap <code>TextFormField</code> untuk memvalidasi input (misalnya, email format, panjang password minimal 8 karakter)</li>
                            <li>Pastikan konfirmasi password sesuai dengan password yang dimasukkan</li>
                        </ol>
                    </li>
                    <li>Implementasikan logika registrasi
                        <ol>
                            <li>Ambil nilai dari TextEditingController (username, password1, password2) dan lakukan validasi awal: tidak kosong, password matching, panjang minimal.</li>
                            <li>Tampilkan indikator loading (mis. showDialog) sebelum memanggil API untuk mencegah input ganda.</li>
                            <li>Lakukan request secara asinkron menggunakan instance CookieRequest:</li>
                            <li>Gunakan alamat yang sesuai untuk emulator (http://10.0.2.2:8000/) atau http://127.0.0.1:8000 untuk pengujian di host.</li>
                            <li>Panggil request.postJson(...) dengan body JSON berisi username, password1, password2.</li>
                            <li>Gunakan try/catch untuk menangani kesalahan jaringan.</li>
                        </ol>
                    </li>
                    <li>Proses respons:
                        <ol>
                            <li>Jika response['status'] == 'success' (atau flag sukses lain dari API): tutup loading, tampilkan SnackBar/AlertDialog sukses, lalu navigasikan ke halaman login dengan Navigator.pushReplacement(...).</li>
                            <li>Jika gagal: tutup loading, ambil pesan error dari response (mis. response['message'] atau response['errors']) dan tampilkan SnackBar/AlertDialog yang informatif.</li>
                        </ol>
                    </li>
                    <li>Setelah selesai, bersihkan form atau reset state sesuai kebutuhan dan pastikan memeriksa context.mounted sebelum menampilkan UI/menavigasi.</li>
                    <li>Sesuaikan dengan tema aplikasi
                        <ol>
                            <li>Gunakan warna tema yang konsisten dengan brand (warna hijau) untuk tombol dan elemen form</li>
                            <li>Pastikan desain UI mengikuti Material Design guidelines yang sudah ditetapkan di aplikasi</li>
                        </ol>
                    </li>
                </ol>
            </li>
            <br>
            <li>Membuat model kustom sesuai dengan proyek aplikasi Django.
                <li>Membuat model kustom sesuai dengan proyek aplikasi Django.
                    <ol>
                        <li>Buat file model Dart baru
                            <ol>
                                <li>Buat file baru <code>product_entry.dart</code> di folder <code>lib/models/</code>.</li>
                                <li>Jika folder models belum ada, buatlah terlebih dahulu.</li>
                            </ol>
                        </li>
                        <li>Definisikan class model dengan properties
                            <ol>
                                <li>Buat class <code>ProductEntry</code> dengan properties yang sesuai dengan model Django (id, name, price, description, stock, dll).</li>
                                <li>Gunakan tipe data yang sesuai di Dart: String untuk CharField, int untuk IntegerField, DateTime untuk DateTimeField.</li>
                                <li>Tandai properties sebagai final untuk immutability dan gunakan null-coalescing jika field optional.</li>
                            </ol>
                        </li>
                        <li>Implementasikan factory constructor fromJson
                            <ol>
                                <li>Buat factory constructor <code>ProductEntry.fromJson(Map&lt;String, dynamic&gt; json)</code> yang menerima Map dari JSON.</li>
                                <li>Di dalam constructor, pemetakan (mapping) setiap key dari JSON ke property yang sesuai.</li>
                                <li>Lakukan type casting jika diperlukan (misalnya, <code>json['price'] as int</code>).</li>
                                <li>Gunakan null-coalescing operator (??) atau conditional expressions untuk menangani nilai null yang mungkin datang dari API.</li>
                                <li>Contoh: <code>int.parse(json['price'].toString())</code> jika API mengirimkan price sebagai string.</li>
                            </ol>
                        </li>
                        <li>Implementasikan method toJson (opsional, untuk POST/PUT)
                            <ol>
                                <li>Jika aplikasi memerlukan pengiriman data ke API (POST atau PUT), buat method <code>Map&lt;String, dynamic&gt; toJson()</code>.</li>
                                <li>Method ini mengkonversi properties dari object Dart kembali menjadi Map yang dapat diserialize ke JSON.</li>
                                <li>Contoh: <code>return {'id': id, 'name': name, 'price': price, ...};</code></li>
                            </ol>
                        </li>
                        <li>Validasi dan testing
                            <ol>
                                <li>Buat file test sederhana atau gunakan print untuk memverifikasi bahwa fromJson bekerja dengan benar.</li>
                                <li>Ambil contoh response JSON dari API Django dan pastikan semua fields diparsing dengan benar tanpa error.</li>
                                <li>Perhatikan tipe data dan format nilai (misalnya, date format dari Django).</li>
                            </ol>
                        </li>
                        <li>Gunakan model di FutureBuilder dan widget lainnya
                            <ol>
                                <li>Di halaman seperti <code>ProductEntryListPage</code>, lakukan parsing response JSON menggunakan model: <code>List&lt;ProductEntry&gt; entries = (jsonData as List).map((item) =&gt; ProductEntry.fromJson(item)).toList();</code></li>
                                <li>Pastikan tipe data yang dikembalikan dari FutureBuilder adalah <code>List&lt;ProductEntry&gt;</code>, bukan <code>List&lt;dynamic&gt;</code> atau <code>List&lt;Map&gt;</code>.</li>
                                <li>Sekarang widget dapat mengakses properties dengan aman: <code>entry.name</code>, <code>entry.price</code>, tanpa khawatir tentang tipe data atau null.</li>
                            </ol>
                        </li>
                    </ol>
                </li>
            </li>
            <br>
            <li>
                Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
                <ol>
                    <li>Buat halaman daftar produk baru
                        <ol>
                            <li>Buat file baru <code>product_entry_list.dart</code> di folder <code>lib/screens/</code></li>
                            <li>Buat class <code>ProductEntryListPage</code> sebagai <code>StatefulWidget</code> untuk mengelola state data produk</li>
                        </ol>
                    </li>
                    <li>Implementasikan fungsi untuk mengambil data dari API Django
                        <ol>
                            <li>Buat fungsi asinkron <code>fetchProductEntries(CookieRequest request)</code> yang melakukan request GET ke endpoint JSON Django (misalnya, <code>http://10.0.2.2:8000/json/</code>)</li>
                            <li>Gunakan try-catch untuk menangani error jaringan</li>
                            <li>Decode response JSON menggunakan <code>jsonDecode()</code> dari <code>dart:convert</code></li>
                            <li>Parsing setiap item JSON menjadi object <code>ProductEntry</code> menggunakan factory constructor <code>fromJson()</code></li>
                            <li>Kembalikan <code>List&lt;ProductEntry&gt;</code> sebagai hasil akhir</li>
                        </ol>
                    </li>
                    <li>Desain UI halaman daftar produk
                        <ol>
                            <li>Gunakan <code>Scaffold</code> dengan <code>AppBar</code> untuk menampilkan judul halaman</li>
                            <li>Tambahkan <code>FutureBuilder&lt;List&lt;ProductEntry&gt;&gt;</code> di body untuk menangani loading, error, dan data asinkron</li>
                            <li>Pada state loading, tampilkan <code>CircularProgressIndicator</code> di tengah layar</li>
                            <li>Pada state error, tampilkan pesan error yang informatif kepada user</li>
                            <li>Pada state hasData, gunakan <code>GridView.builder</code> atau <code>ListView.builder</code> untuk menampilkan daftar produk</li>
                        </ol>
                    </li>
                    <li>Buat widget kartu produk (ProductEntryCard)
                        <ol>
                            <li>Buat file baru <code>product_entry_card.dart</code> di folder <code>lib/widgets/</code></li>
                            <li>Desain kartu untuk menampilkan informasi produk seperti nama, harga, deskripsi, dan stok</li>
                            <li>Gunakan <code>Card</code> widget dengan <code>Padding</code> dan <code>Column</code> untuk menata elemen secara vertikal</li>
                            <li>Tambahkan gambar produk atau placeholder jika tersedia</li>
                            <li>Gunakan <code>InkWell</code> atau <code>GestureDetector</code> untuk memberikan efek sentuhan dan navigasi ke detail produk (opsional)</li>
                        </ol>
                    </li>
                    <li>Integrasikan halaman ke dalam aplikasi
                        <ol>
                            <li>Pastikan halaman dapat diakses dari menu utama atau drawer aplikasi</li>
                            <li>Tambahkan route ke halaman ini dalam navigasi aplikasi jika menggunakan routing</li>
                            <li>Sesuaikan dengan tema warna aplikasi (hijau untuk konsistensi brand)</li>
                        </ol>
                    </li>
                    <li>Implementasikan error handling dan edge cases
                        <ol>
                            <li>Tangani kasus ketika tidak ada data produk (list kosong): tampilkan pesan "Tidak ada produk"</li>
                            <li>Tangani kasus timeout atau koneksi gagal: tampilkan tombol retry untuk mengambil ulang data</li>
                            <li>Validasi bahwa <code>CookieRequest</code> instance telah diberikan melalui Provider atau konteks</li>
                            <li>Gunakan <code>context.mounted</code> sebelum menampilkan dialog atau menavigasi untuk menghindari error</li>
                        </ol>
                    </li>
                    <li>Testing dan debugging
                        <ol>
                            <li>Jalankan aplikasi dan verifikasi bahwa data produk berhasil ditampilkan dari API Django</li>
                            <li>Periksa console/logs untuk memastikan parsing JSON berjalan tanpa error</li>
                            <li>Pastikan URL endpoint JSON sesuai dengan yang dideploy di Django (gunakan alamat IP yang benar untuk emulator)</li>
                            <li>Jika data tidak muncul, debug dengan mencetak respons API dan struktur JSON untuk memastikan kesesuaian dengan model Dart</li>
                        </ol>
                    </li>
                </ol>
            </li>
            <br>
            <li>
                Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
                <ol>
                    <li>Buat halaman detail produk baru
                        <ol>
                            <li>Buat file baru <code>product_detail.dart</code> di folder <code>lib/screens/</code></li>
                            <li>Buat class <code>ProductDetailPage</code> sebagai <code>StatelessWidget</code> (atau <code>StatefulWidget</code> jika memerlukan fitur tambahan seperti edit/delete)</li>
                            <li>Terima object <code>ProductEntry</code> sebagai parameter dalam constructor untuk menampilkan detail produk tersebut</li>
                        </ol>
                    </li>
                    <li>Desain UI halaman detail produk
                        <ol>
                            <li>Gunakan <code>Scaffold</code> dengan <code>AppBar</code> untuk menampilkan judul produk</li>
                            <li>Tambahkan tombol kembali (back button) otomatis di AppBar</li>
                            <li>Gunakan <code>SingleChildScrollView</code> untuk menangani konten yang mungkin panjang dan melebihi layar</li>
                            <li>Gunakan <code>Column</code> dengan <code>Padding</code> untuk menata elemen detail secara vertikal</li>
                            <li>Tampilkan informasi lengkap produk seperti nama, harga, deskripsi, stok, dan tanggal dibuat</li>
                            <li>Gunakan <code>Card</code> atau <code>Container</code> dengan dekorasi untuk membuat setiap bagian informasi lebih terstruktur dan mudah dibaca</li>
                        </ol>
                    </li>
                    <li>Implementasikan navigasi dari halaman daftar ke halaman detail
                        <ol>
                            <li>Pada <code>ProductEntryCard</code> di halaman daftar, tambahkan <code>GestureDetector</code> atau <code>InkWell</code> untuk mendeteksi tap/klik</li>
                            <li>Pada event onTap, gunakan <code>Navigator.push()</code> untuk navigasi ke halaman detail</li>
                            <li>Kirimkan object <code>ProductEntry</code> yang diklik sebagai argument ke halaman detail</li>
                            <li>Contoh: <code>Navigator.push(context, MaterialPageRoute(builder: (context) => ProductEntryDetailPage(entry: entry)))</code></li>
                        </ol>
                    </li>
                    <li>Sesuaikan dengan tema aplikasi
                        <ol>
                            <li>Gunakan warna tema yang konsisten dengan brand (warna hijau) untuk tombol dan elemen visual</li>
                            <li>Pastikan ukuran font dan padding konsisten dengan desain aplikasi lainnya</li>
                            <li>Terapkan Material Design guidelines untuk konsistensi keseluruhan</li>
                        </ol>
                    </li>
                    <li>Testing dan debugging
                        <ol>
                            <li>Jalankan aplikasi dan klik salah satu produk dari halaman daftar untuk memverifikasi navigasi berfungsi</li>
                            <li>Pastikan semua informasi produk ditampilkan dengan benar di halaman detail</li>
                            <li>Verifikasi tombol kembali (back button) berfungsi untuk kembali ke halaman daftar</li>
                            <li>Periksa bahwa data yang ditampilkan sesuai dengan produk yang diklik</li>
                            <li>Pastikan layout responsif dan tidak ada elemen yang terpotong di berbagai ukuran layar</li>
                        </ol>
                    </li>
                </ol>
            </li>
        </ol>
    </li>
</ol>
</details>