1. Mohon jelaskan apa itu Node.js? Apa perbedannya dengan JavaScript?
Node.js adalah platform perangkat lunak yang dirancang oleh Ryan Lienhart Dahl. Node.js adalah runtime untuk lingkungan JavaScript diluar peramban web yang dibangun diatas v8 JavaScript Engine.
Javascript adalah bahasa pemrograman. Node.js adalah runtime. Javascript yang pada awalnya browser/client-side oriented, dengan menggunakan Node.js sebagai runtime kamu bisa menggunakan Javascript untuk melakukan berbagai proses di sisi server.


2. Mohon jelaskan arsitektur dari Node.js?
Node.js memiliki dua komponen utama, yaitu engine JavaScript V8 Google dan Libuv Library. Selain itu, platform tersebut menggunakan dua design pattern: object pool dan facade. Berikut adalah penjelasan singkat atas masing-masing komponen.

1) Engine V8
Engine V8 milik Google adalah sebuah compiler JavaScript yang dibuat menggunakan bahasa pemrograman C++. Dengan komponen ini, input berupa kode JavaScript dapat di-compile menjadi kode dalam tingkat assembly. V8 sendiri terdiri dari tiga komponen:
1.1 Compiler — mengubah JavaScript menjadi bahasa pemrograman lain
1.2 Optimizer — menciptakan sebuah abstract syntax tree yang akan diubah menjadi static single assignment dan dioptimasi
1.3 Garbage collector — V8 membagi penyimpanan yang ada menjadi dua, yaitu penyimpanan lama dan baru. Keduanya  menyimpan objek JavaScript, tetapi penyimpanan baru juga merupakan tempat menaruh output dari compiler. Ketika penyimpanan baru sudah penuh, garbage collector memindahkan objek-objek lama ke penyimpanan lama agar kinerja Node.js tetap ringan.

2) Libuv library
Library C++ ini bertugas mengelola operasi asynchronous I/O (input/output) di Node.js dan main event loop. Di dalamnya juga terdapat thread pool reserve yang menangani thread setiap operasi I/O.

3) Design pattern
Ada dua jenis design pattern yang digunakan oleh Node.js, yaitu object pool dan facade. Berikut penjelasannya:
3.1 Object pool — design pattern berisi kumpulan objek yang dapat digunakan untuk task tertentu
3.2 Facade — design pattern yang memberikan tampilan antarmuka untuk body kode


3. Apa perbedaan antara Built-in Module, External Module, dan Custom Module pada Node.js?
Nodejs memiliki banyak modul bawaan (build-in) yang bisa kita manfaatkan dalam membuat aplikasi.
Modul-modul ini tidak perlu kita install dengan NPM, karena sudah disediakan sejak kita install Nodejs.
Cara mengimpor modul build-in ke dalam aplikasi adalah menggunakan fungsi require().

sedangkan external module adalah module dari NPM, sama seperti menggunakan modul build-in.
Namun, kita harus install dulu modulnya dengan NPM, baru bisa diimpor dengan fungsi require().

sedangkan custom module adalah ketika module yang kita butuhkan tidak ada di dalam build-in dan NPM, maka kita harus buat sendiri.
Cara membuat modul Nodejs sangatlah mudah.
Tinggal membuat fungsi lalu diekspor.



4. Sebutkan salah satu contoh dari Built-in Module, External Module, dan Custom Module pada Node.js?
Contoh beberapa Build-in module:
http untuk melakukan HTTP Request dan membuat server HTTP.
fs untuk bekerja dengan file sistem.
url untuk parsing string dari URL.
querystring untuk bekerja query string.
os menyediakan informasi tentang sistem operasi.
dll.

Contoh External module :
npm install moment
// impor modul mementjs
var moment = require("moment");

// menggunakan modul momentjs
console.log("Sekarang: " + moment().format('D MMMM YYYY, h:mm:ss a'));

Contoh Custom module :
exports.salamPagi = function () {
    return "Selamat Pagi!";
};
// impor modul mementjs dan salam
var moment = require("moment");
var salam = require("./salam");

// menggunakan modul
console.log(salam.salamPagi());
console.log("Sekarang: " + moment().format('D MMMM YYYY, h:mm:ss a'));