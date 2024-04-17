#Verilen parametreler
b <- 13
d <- 5
e <- 64
z0 <- 7
n <- 453

#z453 değerini hesapla
z <- z0
for (i in 1:n) {
  z <- (b * z + d) %% e
}

print(z)