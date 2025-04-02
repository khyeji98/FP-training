func printTimesTable(num: Int, until max: Int) {
    (1...max).map {
        print("\(num) * \($0) = \(num * $0)")
    }
}

printTimesTable(num: 2, until: 9)
