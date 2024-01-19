// TP Modul 3 Programming
// Nama : Alya Zahra Raisa Rahma
// NIM  : 13022085

// Soal 2 : Membuat derived turunan dan implementasinya

#include <iostream>

class Shape
{
protected:
    float area;
    float keliling;
public:
    Shape(float area, float keliling){
        this->area = area;
        this->keliling = keliling;
    }
    // gunakan virtual function -> untuk base class
    virtual float calculateArea(){
        return 0;
    }
    virtual float calculateKeliling(){
        return 0;
    }
};

// Buatlah class Rectangle sebagai turunan dari class Shape
class Rectangle : public Shape
{
private:
    // deklarasikan member data, (float) width dan (float) length
    float width;
    float length;
public:
    // Buatlah constructor untuk menginisialisasi member!
    Rectangle(float width, float length) : Shape(area, keliling)
    {
        this->width = width;
        this->length = length;
        area = calculateArea();
        keliling = calculateKeliling();
    }
    // Buatlah calculateArea() 
    float calculateArea(){
        return width*length;
    }
    // Buatlah calculateKeliling()
    float calculateKeliling(){
        return 2*(width + length);
    }
};

int main()
{
    Rectangle rect (5.0, 4.0);
    Shape* shape1 = &rect;
    // dengan menggunakan pointer shape1, panggillah
    // function calculateArea() dan calculateKeliling() pada class Rectangle
    std::cout << shape1->calculateArea() << '\n';
    std::cout << shape1->calculateKeliling() << std::endl;
    // PERIKSA HASILNYA BENAR ATAU SALAH? Jika salah maka perbaikilah base class-nya
    return 0;
}
