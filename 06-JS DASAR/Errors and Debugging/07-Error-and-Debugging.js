/// Soal - 01
/// Kamu diminta untuk menjelaskan apa perbedaan antara
/// - Type Error
/// - Reference Error
/// - Range Error
/// - Syntax Error

/// WRITE YOUR ANALYSIS HERE
/// - Type Error yaitu membuat instance yang mewakili kesalahan yang terjadi saat variabel atau parameter bukan tipe yang valid. Atau ketika menggunakan nilai yang berada di luar kisaran tipe yang diharapkan. Arti lain,  error yang terjadi ketika salah memasukan huruf atau lambang.
/// - Reference Error yaitu Mmmbuat instance yang mewakili kesalahan yang terjadi saat mereferensikan referensi yang tidak valid. Atau ketika menggunakan (referensi) variabel yang belum dideklarasikan.
/// - Range Error yaitu membuat instance yang mewakili kesalahan yang terjadi saat variabel numerik atau parameter berada di luar rentang validnya. Atau ketika menggunakan angka yang berada di luar rentang nilai legal.Arti lain juga, RangeError dilemparkan saat mencoba meneruskan angka sebagai argumen ke fungsi yang tidak mengizinkan rentang yang menyertakan angka itu.
/// - Syntax Error yaitu membuat instance yang mewakili kesalahan yang terjadi saat variabel atau parameter bukan tipe yang valid. Atau ketika mencoba mengevaluasi kode dengan kesalahan sintaks. Arti lainnya, error yang terjadi jika ada kesalahan sintaks dalam script dan pesan kesalahan akan muncul pada outputnya ketika dijalankan.


console.log('-------------------------------------')


/// Soal - 02
/// Kamu diminta untuk melakukan analisa terhadap baris kode dibawah dengan instruksi detail sebagai berikut:
/// - apabila kita menjalankan baris kode dibawah apa yang akan terjadi?
/// - apabila terjadi error, termasuk dalam kategori manakah error tersebut?
/// - apabila terjadi error, jelaskan mengapa hal tersebut bisa terjadi

/// WRITE YOUR ANALYSIS HERE
/// - Apabila kita menjalankannya maka kita tidak dapat mengakses variabel tersebut, karena variabel belum dideklarasikan.
/// - Ini termasuk dalam kategori error, Reference Error. Karena variabel belum dideklarasikan ketika didefinisikan atau dijalankan.
/// - Karena variabel salaryWithConst dan salaryWithVar belum didefinisikan, dalam contoh kasus ini terdapat kesalahan penempatan urutan. Seharusnya kedua variabel tersebut dideklarasikan terlebih dahulu sebelum kita dapat mendefinisikan atau menjalankannya. Sebagai contoh kita dapat memindahkan var salaryWithVar dan const salaryWithConst ke atas, agar dapat dideklarasikan terlebih dahulu

console.log(salaryWithVar)
console.log(salaryWithConst)

var salaryWithVar = 15000000;
const salaryWithConst = 15000000;