# db
## db_absen
folder db ini berupa database terhadap aplikasi yang dibuat yang berisi beberapa variabel seperti variabel admin untuk login dimana menerima parameter username,password,nama dan disini id juga ditambahkan tapi berupa AutoIncrement, selanjutnya dalam db juga ada variabel mahasiswa untuk pendataaan mahasiswa yang akan menerima parameter NIM, NamaMahasiswa,JK (jenis kelamin), kelas, alamat dan bisa data ditambahkan, diedit, dan dihapus saat membuka aplikasi bagian pendataan mahasiswa. Terakhir database untuk bagian absensi mahasiswa dimana menyimpan id secara autoincrement, idadmin, NIM, NamaMahasiswa, status kehadiran yang berupa choicebox, dan tanggal pertemuan yang diambil tanggal hari ini, setelah itu menyimpan keterangan yang berupa informasi tambahan

KETERANGAN LOGIN :
USERNAME : admin
PASSWORD : 123

# dist
folder ini berisi file executable jar dimana apabila tidak ingin membuka code dan ingin langsung menjalankan aplikasi maka disini solusinya dan tersedia beberapa opsi dalam bentuk ekstensi executable jar dan exe

## lib
setelah masuk di folder dist, terdapat pula library yang berisi library yang dipakai saat membangun aplikasi ini yang terdiri atas dua library
### mysql-connector-java-8.0.11.jar
### rs2xml.jar

# src
## App

### koneksi.java
```java
getConnection()
```
Metode ini mengembalikan objek Connection yang mewakili koneksi ke database. Koneksi ini dibuat menggunakan URL database, username, dan password yang ditentukan.
```java
getCon()
```
Metode ini memanggil getConnection() untuk mendapatkan koneksi ke database. Jika koneksi berhasil dibuat, objek connection dalam kelas ini akan diinisialisasi dengan koneksi yang berhasil. Jika koneksi gagal, akan ditampilkan pesan kesalahan.
```java
Eksekusi(String Query, String Pesan)
```
Metode ini digunakan untuk menjalankan perintah SQL yang tidak mengembalikan hasil (misalnya, INSERT, UPDATE, DELETE). Metode ini menerima dua parameter: Query berisi perintah SQL yang akan dieksekusi, dan Pesan adalah pesan yang akan ditampilkan setelah eksekusi berhasil atau gagal.
```java
tampil(javax.swing.JTable table, String Query)
```
Metode ini digunakan untuk menampilkan hasil query pada sebuah JTable. Metode ini menerima dua parameter: table, objek JTable yang akan digunakan untuk menampilkan data, dan Query, perintah SQL yang akan dijalankan untuk mengambil data dari database. Metode ini akan menjalankan query, mengambil hasilnya, dan mengatur hasil query ke dalam JTable menggunakan DbUtils.resultSetToTableModel().
```java
combo(String Query, String ID, String Nama, javax.swing.JComboBox cb)
```
Metode ini digunakan untuk mengisi combo box (JComboBox) dengan data dari database. Metode ini menerima empat parameter: Query adalah perintah SQL yang akan dijalankan untuk mendapatkan data, ID dan Nama adalah nama kolom dalam hasil query yang akan ditampilkan sebagai nilai dan teks pada setiap item combo box, dan cb adalah objek JComboBox yang akan diisi dengan data dari database. Metode ini menjalankan query, mengambil hasilnya, dan menambahkan setiap item combo box dengan nilai dari kolom ID diikuti dengan tanda "-" dan nilai dari kolom Nama.

### login.java
```java
initComponents()
```
Metode ini digunakan untuk menginisialisasi komponen-komponen GUI yang terdapat dalam jendela login. Metode ini secara otomatis dihasilkan oleh IDE saat membuat GUI dengan drag-and-drop.

```java
btKeluarActionPerformed()
```
Metode ini merupakan event handler yang dipanggil ketika tombol "Keluar" (btKeluar) ditekan. Metode ini menghentikan program dengan memanggil System.exit(0), sehingga aplikasi akan ditutup.

```java
btMasukActionPerformed()
```  
Metode ini merupakan event handler yang dipanggil ketika tombol "Masuk" (btMasuk) ditekan. Metode ini berisi logika untuk memeriksa kecocokan username dan password yang dimasukkan oleh pengguna dengan data yang ada dalam tabel "admin" di database. Jika login berhasil, akan ditampilkan pesan dialog yang menginformasikan login berhasil, dan jendela baru dengan menu utama (Menu) akan ditampilkan. Jika login gagal, akan ditampilkan pesan dialog yang menginformasikan bahwa username atau password salah, dan elemen-elemen input akan direset.
```java
main(String args[])
```
Metode ini merupakan metode utama yang akan dijalankan saat aplikasi dimulai. Metode ini menjalankan jendela login (Login) dan menetapkan tampilan dan tata letak yang sesuai dengan preferensi Look and Feel.

### Pengguna.java
```java
Pengguna()
```
Constructor ini digunakan untuk menginisialisasi komponen GUI saat objek kelas Pengguna dibuat. Method initComponents() dipanggil di dalam constructor ini untuk menginisialisasi komponen-komponen GUI yang telah dibuat.
```java
nampil()
```
Method ini digunakan untuk menampilkan data pengguna pada tabel. Method ini menggunakan objek koneksi dan memanggil method tampil() dari objek tersebut untuk mengambil data dari tabel admin dan menampilkannya pada tabel tbMahasiswa.
```java
hidup()
```
Method ini digunakan untuk mengaktifkan (enable) beberapa field input pada GUI, yaitu txtNama, txtPassword, dan txtUser.
```java
mati()
```
Method ini digunakan untuk menonaktifkan (disable) beberapa field input pada GUI, yaitu txtNama, txtPassword, txtUser, txtID, lbID, dan tombol btSimpan, btUbah, btHapus. Method ini juga mengosongkan semua field input.
```java
tbMahasiswaMouseClicked()
```
Method ini dipanggil saat pengguna melakukan klik pada salah satu baris tabel tbMahasiswa. Method ini mengambil data dari baris yang diklik dan mengisinya ke field input yang sesuai. Method ini juga mengaktifkan tombol btUbah dan btHapus, serta memanggil method hidup() untuk mengaktifkan field input.
```java
btTambahActionPerformed()
```
Method ini dipanggil saat pengguna mengklik tombol btTambah. Method ini memanggil method hidup() untuk mengaktifkan field input, serta mengaktifkan tombol btSimpan.
```java
btSimpanActionPerformed()
```
Method ini dipanggil saat pengguna mengklik tombol btSimpan. Method ini melakukan validasi untuk memastikan bahwa semua field input telah diisi. Jika data sudah lengkap, method ini menggunakan objek koneksi dan memanggil method Eksekusi() untuk menyimpan data ke dalam tabel admin. Setelah itu, method nampil() dipanggil untuk menampilkan kembali data terbaru pada tabel, dan method mati() dipanggil untuk menonaktifkan field input dan mengosongkannya.
```java
btUbahActionPerformed()
```
Method ini dipanggil saat pengguna mengklik tombol btUbah. Method ini menggunakan objek koneksi dan memanggil method Eksekusi() untuk mengupdate data pada tabel admin berdasarkan nilai-nilai yang ada pada field input. Setelah itu, method nampil() dipanggil untuk menampilkan kembali data terbaru pada tabel, dan method mati() dipanggil untuk menonaktifkan field input dan mengosongkannya.
```java
btHapusActionPerformed()
```
Method ini dipanggil saat pengguna mengklik tombol btHapus. Method ini menampilkan dialog konfirmasi untuk memastikan pengguna benar-benar ingin menghapus data.

### Presensi.java
```Java
hidup()
```
Metode ini mengaktifkan komponen-komponen pada antarmuka pengguna yang terkait dengan input data presensi, seperti txtKeterangan, cbNim, dan cbPresensi. Metode ini digunakan untuk mengatur komponen-komponen menjadi dapat diakses oleh pengguna.
```java
mati()
```
Metode ini menonaktifkan komponen-komponen pada antarmuka pengguna yang terkait dengan input data presensi. Komponen-komponen yang dinonaktifkan antara lain txtKeterangan, cbNim, dan cbPresensi. Metode ini juga mengatur beberapa komponen menjadi keadaan awal, seperti mengosongkan teks pada txtKeterangan, menyembunyikan txtID, dan menonaktifkan tombol simpan, hapus, dan ubah.
```java
nampilCombo()
```
Metode ini mengisi komponen cbNim dengan data dari tabel mahasiswa. Metode ini menggunakan objek koneksi untuk menjalankan perintah SQL yang mengambil data NIM dan NamaMahasiswa dari tabel mahasiswa dan menampilkannya dalam bentuk combo box (cbNim).
```java
nampil()
```
Metode ini menampilkan data presensi dalam tabel tbMahasiswa. Metode ini menggunakan objek koneksi dan menjalankan perintah SQL yang mengambil data presensi dari vpresensi dan menampilkannya dalam tabel tbMahasiswa.
```java
btCariActionPerformed()
```
Metode ini dipanggil ketika tombol "Cari" (btCari) ditekan. Metode ini menggunakan objek koneksi dan menjalankan perintah SQL yang mengambil data presensi berdasarkan NIM atau NamaMahasiswa yang cocok dengan teks yang dimasukkan dalam txtCari. Hasil pencarian ditampilkan dalam tabel tbMahasiswa.

### Menu.java
```java
Menu()
```
Konstruktor ini digunakan untuk menginisialisasi objek Menu. Pada konstruktor ini, method initComponents() dipanggil untuk menginisialisasi komponen-komponen GUI dan setLocationRelativeTo(this) digunakan untuk menjadikan frame ditampilkan di tengah layar.
```java
initComponents() 
```
Method ini digunakan untuk menginisialisasi semua komponen GUI yang ada pada frame. Method ini dihasilkan oleh NetBeans GUI Builder dan secara otomatis dibuat saat kita mendesain frame menggunakan tools GUI Builder.
```java
mKeluarActionPerformed(java.awt.event.ActionEvent evt) 
```
Method ini dipanggil ketika menu item "Keluar" di menu "File" ditekan. Ketika menu item tersebut ditekan, method ini akan membuat objek baru dari kelas Login, menampilkan frame Login, dan menutup frame Menu.
```java
mPenggunaActionPerformed(java.awt.event.ActionEvent evt) 
```
Method ini dipanggil ketika menu item "Pengguna" di menu "Master" ditekan. Ketika menu item tersebut ditekan, method ini akan membuat objek baru dari kelas Pengguna, menambahkannya ke desktop pane (desk), dan menampilkannya.
```java
mMahasiswaActionPerformed(java.awt.event.ActionEvent evt) 
```
Method ini dipanggil ketika menu item "Mahasiswa" di menu "Master" ditekan. Ketika menu item tersebut ditekan, method ini akan membuat objek baru dari kelas Mahasiswa, menambahkannya ke desktop pane (desk), dan menampilkannya.
```java
mPresensiActionPerformed(java.awt.event.ActionEvent evt) 
```
Method ini dipanggil ketika menu item "Presensi" di menu "Absensi" ditekan. Ketika menu item tersebut ditekan, method ini akan membuat objek baru dari kelas Presensi, menambahkannya ke desktop pane (desk), dan menampilkannya.
```java
main(String args[]) 
```
Method ini adalah method utama yang akan dieksekusi saat aplikasi dijalankan. Method ini digunakan untuk membuat objek Menu dan menampilkannya.

### Mahasiswa.java
```java
nampil()
```
Method ini digunakan untuk menampilkan data mahasiswa ke dalam tabel. Pada method ini, terdapat pemanggilan method kon.getCon() untuk membuat koneksi ke database
```java
kon.tampil(tbMahasiswa, "SELECT * FROM mahasiswa") 
```
untuk mengeksekusi query SELECT dan menampilkan hasilnya ke dalam tabel tbMahasiswa.
```java
hidup()
```
Method ini digunakan untuk mengaktifkan input field dan komponen lainnya. Pada method ini, input field seperti txtNama, txtAlamat, txtKelas, dan txtNim diaktifkan dengan menggunakan method setEnabled(true). ComboBox cbJK juga diaktifkan. Method ini biasanya dipanggil ketika ingin menambah atau mengubah data mahasiswa.
```java
mati()
```
Method ini digunakan untuk menonaktifkan input field dan komponen lainnya serta mengosongkan nilai input field. Pada method ini, input field seperti txtNama, txtAlamat, txtKelas, dan txtNim dinonaktifkan dengan menggunakan method setEnabled(false). ComboBox cbJK juga dinonaktifkan. Nilai-nilai input field diatur menjadi string kosong (""). Tombol btSimpan, btUbah, dan btHapus juga dinonaktifkan. Method ini biasanya dipanggil setelah data mahasiswa ditambah, diubah, atau dihapus.
```java
btCariActionPerformed()
```
Method ini dipanggil ketika tombol btCari ditekan. Method ini akan mengambil teks yang dimasukkan ke dalam input field txtCari dan menggunakan teks tersebut sebagai kriteria pencarian dalam query SELECT di method kon.tampil(). Hasil pencarian akan ditampilkan ke dalam tabel tbMahasiswa.
```java
tbMahasiswaMouseClicked()
```
Method ini dipanggil ketika pengguna mengklik salah satu baris dalam tabel tbMahasiswa. Method ini akan mengambil nilai-nilai dari baris yang diklik dan menempatkannya ke dalam input field txtNim, txtNama, cbJK, txtKelas, dan txtAlamat. Tombol btUbah dan btHapus diaktifkan, sedangkan tombol btTambah dinonaktifkan. Input field txtNim dinonaktifkan agar tidak dapat diubah.

```java
btTambahActionPerformed()
```
Method ini dipanggil ketika tombol btTambah ditekan. Method ini memanggil method hidup() untuk mengaktifkan input field dan komponen lainnya. Tombol btSimpan diaktifkan.




