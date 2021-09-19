//Inisialisasi Variabel
integer nilai_awal, nilai_akhir, sisa;

//eksekusi input
input nilai_awal

//eksekusi sisa bagi
sisa = nilai_awal % 5 < 3;

//eksekusi sisa bagi
if(nilai_awal < 68){
nilai_akhir = nilai_awal;
}else if(nilai_awal) >= 68){
if(sisa < 3){
nilai_akhir = nilai_awal;
}else if(sisa >= 3){
if(sisa == 3){
nilai_akhir = nilai_awal + 2;
}else if(sisa == 4){
nilai_akhir = nilai_awal + 1;
}else if(sisa == 5){
nilai_akhir = nilai_awal;
}
}
}

//eksekusi output
print "Hasil" : " + nilai_akhir;
