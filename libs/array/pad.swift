Pad a string to :length using :padding repeated on both sides. If the excess length is odd, then more padding is added to the left side than the right.

- - -

func pad(target: String, length: Int, padding: String = " ") -> String {
    assert(padding != "", "Padding may not be empty")

    let n = len(target)
    let m = len(padding)

    // TODO
}

- - -

pad("ab", 10, "z") == "zzzzabzzzz"