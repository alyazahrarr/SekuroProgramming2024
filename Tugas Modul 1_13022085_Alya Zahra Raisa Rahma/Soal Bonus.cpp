#include <iostream>
using namespace std;

// Tugas Day 1 Programming
// Nama : Alya Zahra Raisa Rahma
// NIM  : 13022085

// Soal Bonus

int main()
{
    int N;
    cout << "N = ";
    cin >> N;

    int num = 0;

    if (!(N % 2 == 0)){ // kalau ganjil
        N = N + 1;}
    else {N = N + 2;}

    for (int j = 1; j <= N-1; j++) //baris
    {
        if (j < N/2){
            for (int i = 0; i < j - 1; i++){
                cout << " ";}
            for (int i = 0; i < N/2 - j + 1; i++){
                cout << num;
                num = num + 1;
                if (num == 10){num = 0;}}
            cout << endl;}
        if (j == N/2){
            for (int i = 0; i < N/2 - 1; i++){
                cout << " ";}
            cout << num;
            num = num + 1;
            if (num == 10){num = 0;}               
            cout << endl;}
        if (j > N/2){
            for (int i = 0; i < N/2 - 1 ; i++){
                cout << " ";}
            for (int i = 0; i < j + 1 - N/2; i++){
                cout << num;
                num = num + 1;
                if (num == 10){num = 0;}}
            cout << endl;}
    }
    

    return 0;
}
