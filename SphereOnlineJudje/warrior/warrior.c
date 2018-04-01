#include <stdio.h>
#include <stdlib.h>

int main(void) {
    int tests, dimension, i, power, sum, j;
    scanf("%d", &tests);
    int *results = (int*) malloc(tests*sizeof(int));

    for (i = 0; i < tests; i++) {
        scanf("%d", &dimension);

        if (dimension % 2 == 0) {
            power = dimension * dimension;
            sum = dimension / 2 + 1;
            for (j = sum - 1; j > 0; j--) sum += j;
            results[i] = power - sum;
        } else {
            power = dimension * dimension + 1;
            sum = (dimension - 1) / 2;
            for (j = sum - 1; j > 0; j--) sum += j;
            sum += (int) (dimension / 2.0 + 0.5) + dimension;
            results[i] = power - sum;
        }
    }

    for (i = 0; i < tests; i++) printf("%s %d\n", "DWON", results[i]);
    free(results);
    return 0;
}