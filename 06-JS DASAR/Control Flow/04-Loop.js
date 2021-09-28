/// Soal - 01
/// Kamu diminta untuk membuat sebuah perulangan menggunakan for loop, untuk mencetak angka prima dari 1 ~ 100

let i = 0
let j = 0

for(i = 1; i <= 100; i++){
  let count = 0
for(j = i; j >= 1; j = j - 1){
    if(i%j === 0){
      count = count + 1
    }
  }
  if(count === 2){
    console.log(i)
  }
}


/// Soal - 02
// // /// Kamu diminta untuk menemukan bilangan prima ke-50, temukan bilangan tersebut menggunakan while loop 
let primeCounter = 0;
let fiftiethPrime = 50
let hitungpprima = 0
let x = 0

while(primeCounter <= 250){
  primeCounter++
  let count = 0
for(x = primeCounter; x >= 1; x = x - 1){
    if(primeCounter%x === 0){
      count = count + 1
    }
  }
  if(count === 2){
  hitungpprima++
  if(hitungpprima === fiftiethPrime){
  console.log(primeCounter + " ke " + hitungpprima)
  }
  }
}


/// Soal - 03
// /// Kamu diminta untuk menemukan bilangan ganjil ke-50, temukan bilangan tersebut menggunakan do while loop
// let oddCounter = 0;
// let fiftiethOdd;

// /// EDIT HERE
let oddCounter = 0;
let fiftiethOdd = 50
let hitungganjil = 0
do {
  oddCounter++ 
  if(oddCounter % 2 === 1 ){
    hitungganjil++
    if(hitungganjil === fiftiethOdd){
    console.log(oddCounter + " ke " + hitungganjil)
  }
 } 
}
while (oddCounter <= 100)


