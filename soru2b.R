# Verilen parametreler
y <- 5
c <- 3
m <- 16

# Başlangıç değeri
x <- 0

# Periyodun bulunması
period <- 0
repeat {
  period <- period + 1
  x <- (y * x + c) %% m
  if (x == 0) {
    break
  }
}

print(period)