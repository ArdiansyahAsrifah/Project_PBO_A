# App
didalam 'app.java' terdapat method showMenu(), Metode ini berfungsi untuk menjalankan aplikasi dan memanggil metode showMenu() dari kelas Menu dalam paket src.com.layouts.

```java
Menu.showMenu();
```

# com

## config
### DbConnect
Kode import digunakan untuk mengimpor kelas-kelas yang diperlukan untuk mengatur koneksi ke database.Kemudian, terdapat deklarasi variabel konstan DB_URL, DB_USER, dan DB_PASS yang berisi informasi koneksi ke database. Anda dapat mengubah nilai-nilai ini sesuai dengan pengaturan database.Selanjutnya, terdapat deklarasi variabel connect, statement, dan resultset yang digunakan untuk menyimpan objek koneksi, pernyataan SQL, dan hasil query yang diperoleh dari database.Metode getConnection() digunakan untuk mengembalikan objek koneksi yang valid. Metode ini akan digunakan di kelas turunan untuk mendapatkan koneksi yang aktif.Metode connection() bertanggung jawab untuk membuat koneksi ke database. Di dalamnya, menggunakan DriverManager.getConnection() untuk mendapatkan objek koneksi dengan menggunakan URL, nama pengguna, dan kata sandi yang ditentukan. Jika koneksi gagal, pesan kesalahan akan dicetak.

```java
DriverManager.getConnection();
```

## controller
### DbController
Kelas DbController memiliki variabel connect, statement, dan resultset yang digunakan untuk menyimpan objek koneksi, pernyataan SQL, dan hasil query yang diperoleh dari database.

Metode getDatabase() digunakan untuk membaca data dari tabel absensi dalam database. Di dalamnya, metode connection() dipanggil untuk mendapatkan objek koneksi, kemudian pernyataan SQL SELECT dieksekusi menggunakan objek pernyataan yang diperoleh. Hasilnya diperoleh dalam objek resultset, dan kemudian data tersebut ditampilkan ke layar.

Metode insertData() digunakan untuk memasukkan data baru ke tabel absensi. Pengguna diminta untuk memasukkan nilai-nilai atribut data melalui Scanner, dan kemudian metode connection() dipanggil untuk mendapatkan objek koneksi. Pernyataan SQL INSERT kemudian dieksekusi menggunakan objek pernyataan, dan data berhasil dimasukkan ke database.

Metode EditData() digunakan untuk mengedit data pada tabel absensi. Pengguna diminta untuk memasukkan ID data yang ingin diubah, kemudian metode connection() dipanggil untuk mendapatkan objek koneksi. Pernyataan SQL SELECT digunakan untuk mendapatkan data yang sesuai dengan ID yang dimasukkan, dan data tersebut ditampilkan ke layar. Selanjutnya, pengguna diminta untuk memasukkan nilai baru untuk atribut "ABSENSI", dan pernyataan SQL UPDATE dieksekusi untuk mengubah data tersebut di database.

Metode DeleteData() digunakan untuk menghapus data dari tabel absensi. Pengguna diminta untuk memasukkan ID data yang ingin dihapus, dan metode connection() dipanggil untuk mendapatkan objek koneksi. Pernyataan SQL DELETE kemudian dieksekusi untuk menghapus data tersebut dari database.

```java
getDatabase();
insertData();
EditData();
DeleteData()
```

## layouts
### DeleteData
Metode deletedata() digunakan untuk memanggil metode DeleteData() dari kelas DbController. Dengan demikian, ketika metode deletedata() dipanggil, data akan dihapus dari tabel absensi.

```java
deletedata();
```

### EditData
ketika metode editdata() dipanggil, pengguna akan diminta untuk memasukkan ID data yang ingin diubah, kemudian data tersebut akan diambil dari tabel absensi dan ditampilkan. Pengguna kemudian diminta untuk memasukkan nilai baru untuk atribut "ABSENSI", dan data tersebut akan diubah di database.

```java
Editdata();
```

### InsertData
metode insertData() dari kelas DbController. Ketika metode insertData() dipanggil, pengguna akan diminta untuk memasukkan data baru seperti NIM, NAMA, JURUSAN, TANGGAL, dan ABSENSI. Data tersebut kemudian akan disimpan ke dalam tabel absensi di database.

```java
Insertdata();
```

### Menu
Metode showMenu() digunakan untuk menampilkan menu pilihan dan menerima input dari pengguna menggunakan objek Scanner. Dalam menu ini, pengguna dapat memilih beberapa pilihan, seperti membaca data, menyisipkan data baru, mengedit data, atau menghapus data. Setiap pilihan akan memanggil metode yang sesuai dari kelas terkait, seperti ReadData.readData(), InsertData.insertData(), EditData.EditData(), atau DeleteData.DeleteData().

```java
showMenu();
```

### ReadData
Metode readData() digunakan untuk memanggil metode getDatabase() dari kelas DbController. Ketika metode getDatabase() dipanggil, data dari tabel absensi akan diambil dari database dan ditampilkan di layar.

```java
getDatabase();
```

## models
### Absen
Setiap atribut memiliki metode getter dan setter yang digunakan untuk mengakses dan mengubah nilai atribut tersebut. Misalnya, metode getNimbaru() digunakan untuk mendapatkan nilai dari atribut nimbaru, sedangkan metode setNimbaru() digunakan untuk mengatur nilai atribut nimbaru.

```java
getNimbaru();
setNimbaru();
```