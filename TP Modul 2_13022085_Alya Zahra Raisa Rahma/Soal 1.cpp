#include <iostream>
using namespace std;

#include <array>

// TP Modul 2 Programming
// Nama : Alya Zahra Raisa Rahma
// NIM  : 13022085

// Soal 1 : Array

int main()
{
    cout << "Input array 1:" << endl;
    array<int, 10> arr {};
    for (int i = 0; i < 10; i++)
    {
        cin >> arr[i];
    }

    cout << "Input array 2:" << endl;
    array<int, 10> arr2 {};
    for (int i = 0; i < 10; i++)
    {
        cin >> arr2[i];
    }

    cout << "Hasil penjumlahan: ";
    for (int i = 0; i < 10; i++)
    {
        cout << arr[i] + arr2[i] << " ";
    }
    
    return 0;
}
