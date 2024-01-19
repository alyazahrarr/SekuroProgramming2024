#include <iostream>
using namespace std;

// Tugas Day 1 Programming
// Nama : Alya Zahra Raisa Rahma
// NIM  : 13022085

// Soal 5

int main()
{
    int angka {};
    cout << "Program C++ Angka Prima" << '\n' << "========================" << endl;
    cout << "Masukkan angka bulat: ";
    cin >> angka;
    bool cek {true};

    for (int i{2}; i < angka; ++i){
        if (angka % i == 0)
            cek = false;
    }

    cout << angka;
    if (cek == false)
        cout << " bukan";
    cout << " angka prima.";

    return 0;
}
