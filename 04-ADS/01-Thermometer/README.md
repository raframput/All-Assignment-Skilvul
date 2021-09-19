//Inisialisasi Variabel
<br>
float "suhu";
<br>
string tipe= "";
<br>
float output_suhu;

//eksekusi input
<br>
print "Masukkan besar suhu";//86
<br>
input suhu = "";
<br>
print "Masukkan tipe satuan suhu";//fahrenheit
<br>
input tipe= "";

//eksekusi proses
if (tipe == "fahrenheit "){
    <br>
    output_suhu = (suhu - 32) * (5/9)
    <br>
}else if(tipe == "kelvin "){
    <br>
    output_suhu = (suhu - 273.15)
    <br>
}else if {
    <br>
    output_suhu = suhu;
    <br>
}

//Hasil
<br>
print "Suhu Anda : " + output_suhu + " Celcius";//30
