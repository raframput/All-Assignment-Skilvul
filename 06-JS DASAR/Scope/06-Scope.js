/// Soal - 01
/// Kita sudah belajar mengenai variable scope yang dimiliki oleh Javascript
/// dan kamu diminta untuk merangkum tentang:
/// - ada berapa banyak jumlah variable scope pada Javascript?
/// - jelaskan secara singkat setiap variable scope yang dimiliki oleh Javascript
/// - buatlah implementasi sederhana dari tiap-tiap variable scope yang dimiliki oleh Javascript

/// WRITE YOUR ANALYSIS HERE
// console.log("1. Variable scope pada Javascript berjumlah 2 yaitu  Global Scope dan Local Scope ");
// console.log("2. (1) Global scope berarti suatu variabel yang dapat dideklarasikan di luar Blocks.Variabel tersebut dapat diakses dimanapun dalam suatu file. Berbeda dengan Global Scope, (2) Local Scope hanya dapat mendeklarasikan variabel di dalam blocks saja, tidak dapat diakses d luar blocks. Biasanya variable dideklarasikan di dalam blocks seperti function, conditional, dan looping. ");

// // implementasi Global Scope
// let makanan = 'Pizza';
//   function makan () {
//     return makanan; // Pizza
//   }
// console.log(makanan); // Pizza

// //implementasi Local Scope
// //Mendeklarasikan variabel di blocks function
// function makan () {
//   let makanan = 'Pizza';
//     return makanan; // Pizza
// }
// console.log(makan ()) // Pizza
// console.log(makanan);

console.log('----------------------------------')

/// Soal - 02
/// Kamu diminta untuk melakukan analisa terhadap baris kode dibawah ini
/// - apa yang akan tampil didalam comsole.log ?
/// - apa alasan yang menyebabkan hasil dari console itu bukan nilai dari variable name?

/// WRITE YOUR ANALYSIS HERE
// console.log("1. Pada console.log hanya akan menampilkan")
// console.log("2. Ini yang disebut dengan local scope, karena variabel printFirstName pada console hanya akan menampilkan nilai yang di luar blocks function, karena jika ingin menampilkan variabel dari name kita harus memindahkan console kedalam blocks function.")

const name = "John Watson";

function printFirstName(name) {
  return name.split(" ")[0];
}

console.log(printFirstName("Mariah Carey"));

