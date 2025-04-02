// f(n) = f(n - 2) + f(n - 1)

func fibo(_ i: Int) -> Int {
    guard i > 1 else { return i }
    return fibo(i - 2) + fibo(i - 1)
}

print(fibo(10)) // 55
