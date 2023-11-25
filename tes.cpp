#include <iostream>
class Counter
{
private:
    unsigned int count; // count

public:
    Counter() : count(0) {} // Constructor
    unsigned int getCount(){ // return count
        return count;
    }
    Counter operator++(){ // increment (prefix)
        ++count; // increment count
        Counter temp; // make a temporary Counter
        temp.count = count; // give it same values as this obj
        return temp; // return the copy
    }
};

int main(){
    Counter c1, c2; // define and initialize
    std::cout << "c1 = " << c1.getCount(); // display
    std::cout << "\nc2 = " << c2.getCount();
    ++c1; // increment c1, c1 = 1
    c2 = ++c1; // c1 = 2 dan c2 = 2
    std::cout << "\nc1 = " << c1.getCount(); // display again
    std::cout << "\nc2 = " << c2.getCount() << '\n';
    return 0;
}
