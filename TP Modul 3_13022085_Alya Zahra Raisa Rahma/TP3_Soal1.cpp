// TP Modul 3 Programming
// Nama : Alya Zahra Raisa Rahma
// NIM  : 13022085

// Soal 1 : Melengkapi struktur class

#include <iostream>

class LinearLine
{
private:
    // empat float data type, yaitu x1, y1, x2, dan y2
    float x1;
    float y1;
    float x2;
    float y2;

public:
    LinearLine (float x1, float y1, float x2, float y2) {
        // Isilah definisi constructor ini dengan tujuan untuk
        // menginisialisasi data member
        this -> x1 = x1;
        this -> y1 = y1;
        this -> x2 = x2;
        this -> y2 = y2;
    }
    float gradient() {
        // hitunglah gradient berdasarkan 4 titik tersebut
        float m = (y2 - y1) / (x2 - x1);
        return m;
    }
    float y_intercept() {
        // hitunglah nilai y ketika x = 0
        int c = y1 - ((y2 - y1) / (x2 - x1))*x1;
        return c;
    }
    void operator + (float a) {
        // Buatlah operator overloading untuk menggeser garis linear
        // sejauh a pada arah sumbu x
        int c_baru = y_intercept() + gradient()*a*(-1);
        std::cout << "y = " << gradient() << "x + " << c_baru << std::endl;
    }
    void printEquation() {
        // print equation dengan format y = mx+c
        // perhatikan m = gradient dan c = y_intercept
        std::cout << "y = " << gradient() << "x + " << y_intercept() << std::endl;
    }
    void printPoints() {
        // print nilai member data dengan format
        // (x1, y1) = ( , )
        std::cout << "(" << x1 << ", " << y1 << ")" << std::endl;
        // (x2, y2) = ( , )
        std::cout << "(" << x2 << ", " << y2 << ")" << std::endl;
    } 
};

int main(){
    LinearLine line(1.0f, 8.0f, 2.0f, 3.0f); // inisialisasi objek line
    int a = 3; // nilai banyaknya penggeseran pada persamaan linear
    // lengkapilah fungsi main sehingga output program seperti pada contoh di bawah
    // (x1, y1) = (1, 8)
    // (x2, y2) = (2, 3)
    line.printPoints();
    // Sehingga didapatkan
    // gradient = -5
    std::cout << "gradient = " << line.gradient() << std::endl;
    // y_intercept = 13
    std::cout << "y_intercept = " << line.y_intercept() << std::endl;
    // y = -5 x + 13
    line.printEquation();
    // Setelah digeser sejauh a, didapatkan persamaan baru:
    // y = -5 x + 28
    line.operator+(a);
}

