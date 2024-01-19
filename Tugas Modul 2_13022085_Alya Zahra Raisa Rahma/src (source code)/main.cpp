// Tugas Day 2 Programming
// Nama : Alya Zahra Raisa Rahma
// NIM  : 13022085

# include <iostream>
# include <vector>
# include <math.h>
using namespace std;

void lokasi(int n, vector<int>& a, vector<int>& b){
    // print elemen di langkah ke-n
    cout << "(" << a[n] << "," << b[n] << ")" << endl;
}

void gerak(int n, int x, int y, vector<int>& a, vector<int>& b){
    // membersihkan elemen
    if (a.size() - 1 > n){
        for (int i = n; i < a.size(); i++){
            a.pop_back();
            b.pop_back();}
    }
    // elemen terakhir ditambah x dan y
    a.push_back(a[a.size() - 1] + x);
    b.push_back(b[b.size() - 1] + y);
}

void lokasi_2(int n, vector<float>& a, vector<float>& b){
    // print elemen di langkah ke-n
    // cout << "(" << a[n] << "," << b[n] << ")" << endl;
    //printf("%0.2lf", tot/jml);
    cout << "(";
    printf("%0.2lf", a[n]);
    cout << ",";
    printf("%0.2lf", b[n]);
    cout << ")" << endl;
}

void gerak_2 (int n, int v, int t, int alpha, vector<float>& a, vector<float>& b){
    // membersihkan elemen
    if (a.size() - 1 > n){
        for (int i = n; i < a.size(); i++){
            a.pop_back();
            b.pop_back();}
    }
    // perhitungan perpindahan
    float dx, dy, sudut {};
    sudut = alpha * 3.14 / 180;
    dx = v * cos(sudut) * t;
    dy = v * sin(sudut) * t;

    // elemen terakhir ditambah x dan y
    a.push_back(a[a.size() - 1] + dx);
    b.push_back(b[b.size() - 1] + dy);
}

int main(){
    // opening
    char opsi {};
    cout << "Selamat Datang di Simulasi Pergerakan Drone!" << '\n' << "============================================" << endl;
    cout << "1   Pergerakan Drone dengan Koordinat" << '\n' << "2   Pergerakan Drone dengan Kecepatan dan Waktu" << '\n' << "Pilih opsi: ";
    cin >> opsi;
    while (opsi != '1' && opsi != '2'){
        cout << "Opsi tidak tersedia. Pilih opsi: ";
        cin >> opsi;}

    // butuh
    int langkah {0};
    char ingin {};

    // Program Pergerakan Drone dengan Koordinat
    if (opsi == '1'){
        // menyimpan histori lokasi
        vector<int> historix {0};
        vector<int> historiy {0};
        // menyimpan input
        int x, y;

        cout << "============================================" << '\n' << "Pergerakan Drone dengan Koordinat" << '\n';
        cout << "1   Pergerakan" << '\n' << "2   Undo" << '\n' << "3   Redo" << '\n' << "4   Cek Lokasi" << '\n' << "5   Keluar" << endl;
        cout << "Ingin melakukan apa? ";
        cin >> ingin;
        // selama belum pilih opsi exit
        while (!(ingin == '5')){
            if (ingin == '1'){ // pergerakan
                cout << "Gerakan drone (dalam koordinat kartesius)? ";
                cin >> x >> y;
                gerak(langkah, x, y, historix, historiy);
                langkah = langkah + 1;}
            if (ingin == '2'){ // undo
                if (!(langkah == 0)){
                langkah = langkah - 1;
                cout << "Undo berhasil!" << endl;}
                else 
                cout << "Undo tidak bisa dilakukan..." << endl;}
            if (ingin == '3'){ // redo
                if (!(langkah == historix.size() - 1)){
                langkah = langkah + 1;
                cout << "Redo berhasil!" << endl;}
                else 
                cout << "Redo tidak bisa dilakukan..." << endl;}
            if (ingin == '4'){ // cek lokasi
                cout << "Lokasi saat ini: ";
                lokasi(langkah, historix, historiy);}    
            cout << "Ingin melakukan apa? ";
            cin >> ingin;
            }}

    // Program Pergerakan Drone dengan Kecepatan dan Waktu
    if (opsi == '2'){
        // menyimpan histori lokasi
        vector<float> historix_2 {0};
        vector<float> historiy_2 {0};
        // menyimpan input
        int v, t, alpha;
        
        cout << "============================================" << '\n' << "Pergerakan Drone dengan Kecepatan dan Waktu" << '\n';;
        cout << "1   Pergerakan" << '\n' << "2   Undo" << '\n' << "3   Redo" << '\n' << "4   Cek Lokasi" << '\n' << "5   Keluar" << endl;
        cout << "Ingin melakukan apa? ";
        cin >> ingin;
        // selama belum pilih opsi exit
        while (!(ingin == '5')){
            if (ingin == '1'){ // pergerakan
                cout << "Kecepatan drone? ";
                cin >> v;
                cout << "Waktu tempuh? ";
                cin >> t;
                cout << "Arah gerak (theta derajat dari horizontal positif)? ";
                cin >> alpha;
                gerak_2(langkah, v, t, alpha, historix_2, historiy_2);
                langkah = langkah + 1;}
            if (ingin == '2'){ // undo
                if (!(langkah == 0)){
                langkah = langkah - 1;
                cout << "Undo berhasil!" << endl;}
                else 
                cout << "Undo tidak bisa dilakukan..." << endl;}
            if (ingin == '3'){ // redo
                if (!(langkah == historix_2.size() - 1)){
                langkah = langkah + 1;
                cout << "Redo berhasil!" << endl;}
                else 
                cout << "Redo tidak bisa dilakukan..." << endl;}
            if (ingin == '4'){ // cek lokasi
                cout << "Lokasi saat ini: ";
                lokasi_2(langkah, historix_2, historiy_2);}   
            cout << "Ingin melakukan apa? ";
            cin >> ingin;
        }
    }

    // closing
    cout << "Terima kasih telah menggunakan simulasi ini!";
    return 0;
}
