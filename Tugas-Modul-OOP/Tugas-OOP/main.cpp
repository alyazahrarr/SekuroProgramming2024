// Tugas Day 3 Programming
// Nama : Alya Zahra Raisa Rahma
// NIM  : 13022085

# include <iostream>
# include <vector>
# include <math.h>
using namespace std;
using std::vector;

class Matrix{
private:
    int baris;
    int kolom;

public:
    vector<vector<float>> element;

// Default constuructor
    Matrix() = default;
// Default destructor
    ~Matrix(){};

// Constructor tipe 1: Menerima input array 2D
    Matrix(vector<vector<float>> vec){
        element = vec;
        baris = vec.size();
        kolom = vec[0].size();
    }

// Constructor tipe 2: Menerima input baris dan kolom
    Matrix(int baris, int kolom){
        this->baris = baris;
        this->kolom = kolom;
        vector<vector<float>> a;
        for (int i = 0; i < baris; i++){
            vector<float> b;
            for (int j = 0; j < kolom; j++){
                b.push_back(0);}
            a.push_back(b);}
        element = a;
    }

// Constructor tipe 3: Meng-copy objek dengan class yang sama
    Matrix& operator=(const Matrix& m){
        return *this;
    }

void display(){
    for (int i = 0; i < baris; i++){
        for (int j = 0; j < kolom; j++)
            cout << element[i][j] << " ";
        cout << endl;
    }
}

Matrix operator+(Matrix X){
    if ((baris = X.baris) & (kolom = X.kolom)){
        Matrix Hasil(baris, kolom);
        for (int i = 0; i < baris; i++){
            for (int j = 0; j < kolom; j++)
                Hasil.element[i][j] = element[i][j] + X.element[i][j];
        };
        return Hasil;
    }
    else {
        cout << "The matrix dimension is not valid!";
        Matrix Hasil(1,1);
        return Hasil;
    }
}

Matrix operator-(Matrix Y){
    if ((baris = Y.baris) & (kolom = Y.kolom)){
        Matrix Hasil(baris, kolom);
        for (int i = 0; i < baris; i++){
            for (int j = 0; j < kolom; j++)
                Hasil.element[i][j] = element[i][j] - Y.element[i][j];
        };
        return Hasil;
    }
    else {
        cout << "The matrix dimension is not valid!";
        Matrix Hasil(1,1);
        return Hasil;
    }
}

Matrix operator*(Matrix Z){
    if (kolom == Z.baris){
        Matrix Hasil(baris,Z.kolom);
        for (int i = 0; i < baris; i++){
            for (int j = 0; j < Z.kolom; j++){
                for (int k = 0; k < Z.baris; k++){
                    Hasil.element[i][j] += element[i][k] * Z.element[k][j];
                };
            };
        };
        return Hasil;}
    else {
        cout << "Multiplication cannot be done. The number of columns in the first matrix should be equal to the number of rows in the second.\n";
        Matrix Hasil(1,1);
        return Hasil;
    }
}

};

class Swerve{
private:
    float vx, vy, omega;
public:
    Matrix v; // menyimpan v1, v2, v3, dan v4

    // Constructor Swerve
    Swerve(float vx, float vy, float omega){
        this->vx = vx;
        this->vy = vy;
        this->omega = omega;
        Matrix vnxy = velocityCommand(vx, vy, omega);
//      vnxy.display();
        vector<vector<float>> a;
        for (int i = 0; i < 4; i++){
            vector<float> b;
            for (int j = 0; j < 1; j++){
                float vn = sqrt(vnxy.element[2*i][0]*vnxy.element[2*i][0] + vnxy.element[2*i+1][0]*vnxy.element[2*i+1][0]);
                b.push_back(vn);}
            a.push_back(b);}
        v.element = a;
        // tes print
        // cout << "tes print matriks V: \n";
        // for (int i = 0; i < v.element.size(); i++){
        //     for (int j = 0; j < v.element[0].size(); j++)
        //         cout << v.element[i][j] << " ";
        //     cout << endl;}
        }

    // Destructor
    ~Swerve(){};

    Matrix velocityCommand(float vx, float vy, float omega)
    {
        Matrix rumusA({{1, 0, -0.26363},
                       {0, 1, 0.26363},
                       {1, 0, -0.26363},
                       {0, 1, 0.26363},
                       {1, 0, -0.26363},
                       {0, 1, 0.26363},
                       {1, 0, -0.26363},
                       {0, 1, 0.26363}});
        Matrix rumusB({{vx}, {vy}, {omega}});
        return rumusA * rumusB;
    }

    // void updatePose(vector<float> x, vector<float> y, vector<float> theta, float vx, float vy, float omega, float dt){
    //     float dx, dy, dtheta;
    //     dx = vx * dt;
    //     dy = vy * dt;
    //     dtheta = omega * dt;
    //     x.push_back(x[x.size() - 1] + dx);
    //     y.push_back(y[y.size() - 1] + dy);
    //     theta.push_back(theta[theta.size() - 1] + dtheta);
    // }

    Matrix updatePose(Matrix Pose, float dt, int it){
        Matrix d ({{vx*dt}, {vy*dt}, {omega*dt}});
        for (int k = 0; k <= 2; k++){
            Pose.element[k][it] = Pose.element[k][it-1] + d.element[k][0];}
        return Pose;
    }
};

int main(){
    // Uji kelas Matrix
    Matrix A ({{1, 2, 3}, {2, 3, 1}});
    Matrix B ({{0, 2, 4}, {1, 2, 5}, {8, 2, 1.2}});
    Matrix C (2,3);

    cout << "Matrix A\n";
    A.display();
    cout << "Matrix B\n";
    B.display();
    cout << "Matrix C\n";
    C.display();
    cout << '\n';

    Matrix C1 = A + C;
    cout << "Matrix C1\n";
    C1.display();
    cout << '\n';

    Matrix C2 = A - C;
    cout << "Matrix C2\n";
    C2.display();
    cout << '\n';

    Matrix C3 = A * B;
    cout << "Matrix C3\n";
    C3.display();
    cout << '\n';

    Matrix C4 = B * A;
    cout << "Matrix C4\n";
    C4.display();
    cout << '\n';

    // Simulasi
    cout << "Simulasi dijalankan.\n";
    Matrix Pose(3,631); // wadah...
    Pose.element[0][0] = 0; // x awal
    Pose.element[1][0] = 5; // y awal
    Pose.element[2][0] = 0; // theta

    vector<float> v1, v2, v3, v4;
    v1.push_back(0); // v awal
    v2.push_back(0);
    v3.push_back(0);
    v4.push_back(0);

    float t = 1;
    float dt = 1;

    int it = 1;
    while (t <= 630){
        float ti = t/100.f;
        float vxt = 48 * cos(ti) * (sin(ti) * sin(ti));
        float vyt = 4 * sin(4*ti) + 6 * sin(3*ti) + 10 * sin(2*ti) - 13 * sin(ti);
        float omega = 0;

        Swerve temp(vxt,vyt,omega);
        Matrix poseupdate = temp.updatePose(Pose, dt/100.f, it);
        for (int i = 0; i < 3; i++){
            for (int j = 0; j < it+1; j++){
                Pose.element[i][j] = poseupdate.element[i][j];}}

        v1.push_back(temp.v.element[0][0]);
        v2.push_back(temp.v.element[1][0]);
        v3.push_back(temp.v.element[2][0]);
        v4.push_back(temp.v.element[3][0]);

        t = t + dt;
        it = it + 1;
    };

    // cout << "tes print v1:\n";
    // for (int i = 0; i < v1.size(); i++){
    //     cout << v1[i] << endl;}

    // cout << "tes print posisi x:\n";
    // for (int i = 0; i <= 630; i++){
    //     cout << Pose.element[0][i] << " " << endl;}

    return 0;
};
