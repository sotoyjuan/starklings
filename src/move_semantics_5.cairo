/// Make me compile only by reordering the lines in `main()`, 
/// but without adding, changing or removing any of them.

#[test]
fn main() {
    let mut a = ArrayTrait::new();
    pass_by_snapshot(@a);
    pass_by_ref(ref a);
    let mut b = pass_by_value(a);
    pass_by_ref(ref b);
}

fn pass_by_value(mut arr: Array<felt252>) -> Array<felt252> {
    arr
}

fn pass_by_ref(ref arr: Array<felt252>) {}

fn pass_by_snapshot(x: @Array<felt252>) {}
