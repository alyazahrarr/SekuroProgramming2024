#include <iostream>
using namespace std;

// TP Modul 2 Programming
// Nama : Alya Zahra Raisa Rahma
// NIM  : 13022085

// Soal 2 : Function

float luas(float r){
    float L;
    L = 3.14*r*r;
    return L;
}

int main(){
    float r;
    cout << "Masukkan nilai radius: ";
    cin >> r;
    cout << luas(r) << endl;
}
