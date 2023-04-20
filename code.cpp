#include <iostream>
#include <vector>

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

    // Compute the matrix product of A and B
    vector<vector<double>> C(n, vector<double>(n));
    matrix_mult(A, B, C);

    // Print out the result matrix C
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            cout << C[i][j] << " ";
        }
        cout << endl;
    }

    return 0;
}
