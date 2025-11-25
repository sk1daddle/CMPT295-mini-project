#include <iostream>
#include <vector>
#include <chrono>
#include <random>

using namespace std;



// g++ -O0 main.cpp iterativeMerge.cpp recursiveMerge.cpp -o test_O0
// g++ -O2 main.cpp iterativeMerge.cpp recursiveMerge.cpp -o test_O2
// g++ -O3 main.cpp iterativeMerge.cpp recursiveMerge.cpp -o test_O3

void mergeSortIterative(vector<int>& arr);
void mergeSortRecursive(vector<int>& arr, int left, int right);



void fillRandom(vector<int>& arr){
    static std::mt19937 rng(12345);  
    std::uniform_int_distribution<int> dist(0, 1000000);

    for (int &x : arr)
        x = dist(rng);
}


void fillSorted(vector<int>& arr){
    for (int i = 0; i < (int)arr.size(); i++)
        arr[i] = i;
}

void fillReverse(vector<int>& arr){
    for (int i =  0; i < (int)arr.size(); i++)
        arr[i] = arr.size() - i;
}

void cpuWarmup() {
    cout << "warming up" << endl;

   
    vector<int> arr(2000000);

    for (int i = 0; i < 2; i++) {
        fillRandom(arr);
        mergeSortIterative(arr);  
    }


    cout << "warmup done\n";
}



int main() {


    cpuWarmup();

    vector<int> sizes = {2000000, 4000000, 8000000, 16000000};

    for (int n : sizes){
        cout << "\n==============================\n";
        cout << "Array size: " << n << "\n";

        vector<int> arr1(n), arr2(n);

    
        fillSorted(arr1);
        arr2 = arr1;  

       //iterative
        auto start = chrono::high_resolution_clock::now();
        mergeSortIterative(arr1);
        auto end = chrono::high_resolution_clock::now();

        auto iterative_time =
            chrono::duration_cast<chrono::microseconds>(end - start).count();

        cout << "Iterative time: " << iterative_time << " microseconds\n";

       //recursive
        start = chrono::high_resolution_clock::now();
        mergeSortRecursive(arr2, 0, arr2.size() - 1);
        end = chrono::high_resolution_clock::now();

        auto recursive_time =
            chrono::duration_cast<chrono::microseconds>(end - start).count();

        cout << "Recursive time: " << recursive_time << " microseconds\n";
    }


    cout << "\nDone\n";
    return 0;




}