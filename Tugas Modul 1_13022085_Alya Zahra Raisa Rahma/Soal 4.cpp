#include <iostream>
using namespace std;

// Tugas Day 1 Programming
// Nama : Alya Zahra Raisa Rahma
// NIM  : 13022085

// Soal 4

int main()
{
    int tahun {};
    cout << "Pengecekan Tahun Kabisat" << endl;
    cout << "Masukkan tahun: ";
    cin >> tahun;

    if ((!(tahun % 400 == 0) && (tahun % 100 == 0)) || (!(tahun % 400 == 0) && !(tahun % 100 == 0) && !(tahun % 4 == 0))){
        cout << "Bukan kabisat.";
    }
    else
        cout << "Kabisat.";
    return 0;
}
