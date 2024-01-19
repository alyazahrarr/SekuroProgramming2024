#include <iostream>
using namespace std;

// Tugas Day 1 Programming
// Nama : Alya Zahra Raisa Rahma
// NIM  : 13022085

// Soal 2

int main()
{
    int jml {};
    cout << "jumlah bilangan: ";
    cin >> jml;

    float tot {0};
    float bil {};
    for (int i {1}; i<=jml; ++i){
        cout << "bilangan " << i << ": ";
        cin >> bil;
        tot = tot + bil;}
    
    cout << "RATA-RATA : ";
    printf("%0.2lf", tot/jml);

    return 0;
}
