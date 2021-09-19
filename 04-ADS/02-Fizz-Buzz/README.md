//Inisialisasi Variabel
integer n;
string hasil;

//eksekusi input
input n;

//eksekusi input dan proses
for {int i=0; i < 10; i++}{
if(i % 3 == 0){
print hasil = "Fizz";
}else if (i % 5 == 0){
print hasil = "Buzz";
}else if( i % 3 == 0 && i % 5 == 0){
print hasil = "FizzBuzz";
}else{
print hasil = i
}
