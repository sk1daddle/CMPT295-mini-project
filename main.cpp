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
    for (int i =  0; i < (int)arr.size(); i++)
        arr[i] = i;
}

void fillReverse(vector<int>& arr){
    for (int i =  0; i < (int)arr.size(); i++)
        arr[i] = arr.size() - i;
}

void cpuWarmup(){
    cout << "warming up" << endl;

   
    vector<int> arr(2000000);

    for (int i = 0; i < 2; i++){
        fillRandom(arr);
        mergeSortIterative(arr);  

    }


    cout << "warmup done\n";
}



int main(){ 
    cpuWarmup();

    vector<int> sizes = {2000000, 4000000, 8000000, 16000000};
    const char* testRandom = "Random";
    const char* testSorted = "Sorted";
    const char* testReverse = "Reverse-sorted";

    for (int n : sizes) {

        cout << "\n====================================================\n";
        cout << "Array size: " << n << "\n";

        vector<int> arr1(n), arr2(n);

        //random
        fillRandom(arr1);
        arr2 = arr1;

        cout << "\n" << testRandom << " array\n";

        auto start = chrono::high_resolution_clock::now();
        mergeSortIterative(arr1);
        auto end = chrono::high_resolution_clock::now();
        
        cout << "Iterative time: "
            << chrono::duration_cast<chrono::microseconds>(end - start).count()
            << " microseconds\n";

        start = chrono::high_resolution_clock::now();
        mergeSortRecursive(arr2, 0, n - 1);
        end = chrono::high_resolution_clock::now();

        cout << "Recursive time: "
            << chrono::duration_cast<chrono::microseconds>(end - start).count()
            << " microseconds\n";


        //sorted
        fillSorted(arr1);
        arr2 = arr1;

        cout << "\n" << testSorted << " array\n";

        start = chrono::high_resolution_clock::now();
        mergeSortIterative(arr1);
        end = chrono::high_resolution_clock::now();
        cout << "Iterative time: "
            << chrono::duration_cast<chrono::microseconds>(end - start).count()
            << " microseconds\n";

        start = chrono::high_resolution_clock::now();
        mergeSortRecursive(arr2, 0, n - 1);
        end = chrono::high_resolution_clock::now();
        cout << "Recursive time: "
            << chrono::duration_cast<chrono::microseconds>(end - start).count()
            << " microseconds\n";


        //reverse sorted
        fillReverse(arr1);
        arr2 = arr1;

        cout << "\n" << testReverse << " array\n";

        start = chrono::high_resolution_clock::now();
        mergeSortIterative(arr1);
        end = chrono::high_resolution_clock::now();
        cout << "Iterative time: "
            << chrono::duration_cast<chrono::microseconds>(end - start).count()
            << " microseconds\n";

        start = chrono::high_resolution_clock::now();
        mergeSortRecursive(arr2, 0, n - 1);
        end = chrono::high_resolution_clock::now();
        cout << "Recursive time: "
            << chrono::duration_cast<chrono::microseconds>(end - start).count()
            << " microseconds\n";
    }

    cout << "\nDone\n";
    return 0;
}