#include <stdio.h>

void matmult(int result[3][3], int first[3][3], int second[3][3]);
void matadd (int result[3][3], int first[3][3], int second[3][3]);

void printMatrix(char label, int M[3][3]) {
    printf("    [%d %d %d]\n", M[0][0], M[0][1], M[0][2]);
    printf("%c = |%d %d %d|\n", label, M[1][0], M[1][1], M[1][2]);
    printf("    [%d %d %d]\n\n", M[2][0], M[2][1], M[2][2]);
}

int main() {

    int A[3][3] = {{1, 2, 3},
                   {4, 5, 6},
                   {7, 8, 9}};

    int B[3][3] = {{1, 2, 0},
                   {3, 4, 5},
                   {0, 6, 7}};

    int AB[3][3];
    int result[3][3];

    matmult(AB, A, B);      // compute A*B
    matadd(result, AB, A);  // compute A*B + A

    // Print A and B
    printMatrix('A', A);
    printMatrix('B', B);

    // Print A*B + A
    printf("            [%d %d %d]\n", result[0][0], result[0][1], result[0][2]);
    printf("A*B+A =     |%d %d %d|\n", result[1][0], result[1][1], result[1][2]);
    printf("            [%d %d %d]\n", result[2][0], result[2][1], result[2][2]);

    return 0;
}

void matmult(int result[3][3], int first[3][3], int second[3][3]) {
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            result[i][j] = 0;
            for (int k = 0; k < 3; k++) {
                result[i][j] += first[i][k] * second[k][j];
            }
        }
    }
}

void matadd(int result[3][3], int first[3][3], int second[3][3]) {
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            result[i][j] = first[i][j] + second[i][j];
        }
    }
}
