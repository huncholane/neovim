// quicksort

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define N 10

void quicksort(int a[], int low, int high);
int partition(int a[], int low, int high);

int main() {
    int a[N];
    int i;

    srand(time(NULL));
    for (i = 0; i < N; i++) {
        a[i] = rand() % 1000;
    }
    printf("Before sorting:\n");
    for (i = 0; i < N; i++) {
        printf("%d ", a[i]);
    }
    printf("\n");

    quicksort(a, 0, N - 1);

    printf("After sorting:\n");
    for (i = 0; i < N; i++) {
        printf("%d ", a[i]);
    }
    printf("\n");

    return 0;
}

void quicksort(int a[], int low, int high) {
    int pivot;

    if (low < high) {
        pivot = partition(a, low, high);
        quicksort(a, low, pivot - 1);
        quicksort(a, pivot + 1, high);
    }
}

int partition(int a[], int low, int high) {
    int left, right, pivot_item = a[low];

    left = low;
    right = high;

    while (left < right) {
        while (a[left] <= pivot_item) {
            left++;
        }
        while (a[right] > pivot_item) {
            right--;
        }
        if (left < right) {
            int temp = a[left];
            a[left] = a[right];
            a[right] = temp;
        }
    }

    a[low] = a[right];
    a[right] = pivot_item;

    return right;
}
