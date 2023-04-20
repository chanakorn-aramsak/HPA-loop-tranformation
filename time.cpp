#include <iostream>
#include <vector>
#include <chrono>

using namespace std;

void matrix_mult(vector<vector<double>>& A, vector<vector<double>>& B, vector<vector<double>>& C) {
    int n = A.size();
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            double sum = 0;
            for (int k = 0; k < n; k++) {
                sum += A[i][k] * B[k][j];
            }
            C[i][j] = sum;
        }
    }
}

int main() {
    // Define 8x8 matrices A and B
    int n = 8;
    vector<vector<double>> A(n, vector<double>(n, 1));
    vector<vector<double>> B(n, vector<double>(n, 2));

    // Compute the matrix product of A and B with different optimization flags
    vector<string> opt_flags = {"-O0", "-O1", "-O2", "-O3", "-Ofast"};
    for (const auto& flag : opt_flags) {
        auto start = chrono::high_resolution_clock::now();
        system(("g++ " + flag + " matrix_mult.cpp -o matrix_mult").c_str());
        vector<vector<double>> C(n, vector<double>(n));
        system("./matrix_mult");
        auto end = chrono::high_resolution_clock::now();
        chrono::duration<double> diff = end - start;
        cout << "Time with " << flag << ": " << diff.count() << " seconds" << endl;
    }

    return 0;
}
