#include <iostream>
using namespace std;

// TP Modul 1 Programming
// Nama : Alya Zahra Raisa Rahma
// NIM  : 13022085

int hitung(int t)
{
    for (int i{t}; i>0; --i)
        cout << i << "... ";
    cout << '\n';
    return 0;
}

int main ()
{
    string pesawat{};
    while (!(pesawat == "o"))
    {
        cout << "Jenis pesawat? ";
        cin >> pesawat;

        if (pesawat == "a")
        {
            hitung(3);
            cout << "PESAWAT A BERANGKAT" << '\n';
        }
        else if (pesawat == "b")
        {
            hitung (5);
            cout << "PESAWAT B BERANGKAT" << '\n';
        }
        else if (!(pesawat == "o"))
            std::cout << "INPUT TIDAK VALID" << '\n';
    }
    cout << "PENERBANGAN DITUTUP";
    return 0;
}
