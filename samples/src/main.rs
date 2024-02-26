// quicksort

fn main() {
    let mut arr = [5, 3, 2, 1, 4];
    println!("Before");
    println!("{:?}", arr);
    quicksort(&mut arr);
    println!("After");
    println!("{:?}", arr);
}

fn quicksort(arr: &mut [i32]) {
    let len = arr.len();
    if len < 2 {
        return;
    }
    let pivot = arr[len / 2];
    let mut i = 0;
    let mut j = len - 1;
    while i <= j {
        while arr[i] < pivot {
            i += 1;
        }
        while arr[j] > pivot {
            j -= 1;
        }
        if i <= j {
            arr.swap(i, j);
            i += 1;
            j -= 1;
        }
    }
    if j > 0 {
        quicksort(&mut arr[0..=j]);
    }
    if i < len {
        quicksort(&mut arr[i..]);
    }
}



