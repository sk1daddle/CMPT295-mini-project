#include <iostream>
#include <vector>
using namespace std;

// Since we want to use a "standardized" version of merge sort, I have taken code from geeksforgeeks.


// Source: https://www.geeksforgeeks.org/dsa/merge-sort/
void merge(vector<int>& arr, int left, int mid, int right) {
    int n1 = mid - left + 1;
    int n2 = right - mid;

    vector<int> L(n1), R(n2);

    for (int i = 0; i < n1; i++) L[i] = arr[left + i];
    for (int j = 0; j < n2; j++) R[j] = arr[mid + 1 + j];

    int i = 0, j = 0, k = left;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) arr[k++] = L[i++];
        else arr[k++] = R[j++];
    }

    while (i < n1) arr[k++] = L[i++];
    while (j < n2) arr[k++] = R[j++];
}


// Recursive Merge Sort
// Source: https://www.geeksforgeeks.org/dsa/merge-sort/

void mergeSortRecursive(vector<int>& arr, int left, int right) {
    if (left >= right) return;

    int mid = left + (right - left) / 2;

    mergeSortRecursive(arr, left, mid);
    mergeSortRecursive(arr, mid + 1, right);

    merge(arr, left, mid, right);
}


// Iterative (Bottom-Up) Merge Sort
// Source: https://www.geeksforgeeks.org/dsa/iterative-merge-sort/
void mergeSortIterative(vector<int>& arr) {
    int n = arr.size();

    // size = size of subarray to merge
    for (int size = 1; size < n; size *= 2) {
        for (int left = 0; left < n - size; left += 2 * size) {
            int mid = left + size - 1;
            int right = min(left + 2 * size - 1, n - 1);

            merge(arr, left, mid, right);
        }
    }
}



// Print array helper
void printArray(const vector<int>& arr) {
    for (int x : arr) cout << x << " ";
    cout << "\n";
}


// Main to test both sorts
int main() {
    vector<int> data1 = {12, 4, 7, 9, 2, 15, 1};
    vector<int> data2 = data1;

    cout << "Original: ";
    printArray(data1);

    // Recursive
    mergeSortRecursive(data1, 0, data1.size() - 1);
    cout << "Recursive sorted: ";
    printArray(data1);

    // Iterative
    mergeSortIterative(data2);
    cout << "Iterative sorted: ";
    printArray(data2);

    return 0;
}