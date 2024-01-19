#include <iostream>
using namespace std;

// Tugas Day 1 Programming
// Nama : Alya Zahra Raisa Rahma
// NIM  : 13022085

// Soal 3

int main()
{
    int N {};
    cin >> N;

    for (int i {1}; i<= (2*N - 1); ++i){
        if (i <= N){
            int n {1};
            while (n <= i){
                cout << "*";
                n = n + 1;}
            cout << endl;}
        else{
            int n {i};
            while (2*N - 1 >= n){
                cout << "*";
                n = n + 1;}
            cout << endl;
        }
    }
    
    return 0;
}
