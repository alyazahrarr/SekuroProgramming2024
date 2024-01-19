#include <iostream>
using namespace std;

// Tugas Day 1 Programming
// Nama : Alya Zahra Raisa Rahma
// NIM  : 13022085

// Soal 1

int main()
{
    int a, b {};
    cin >> a >> b;
    
    int i {};
    if (a % 2 == 0)
        i = a;
    else
        i = a + 1;
    
    while (i < b){
        cout << i << " ";
        i = i + 2;}

    if (b % 2 == 0)
        cout << b;

    return 0;
}
