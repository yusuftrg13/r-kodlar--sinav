# Verilen başlangıç değerleri ve parametrelerimizi girelim
z1 <- c(45, 100, 57)
z2 <- c(17, 1, 24)
a1 <- c(12, 0, 89)
a2 <- c(0, 14, 28)
m1 <- 127
m2 <- 31

# İlk üç rasgele sayıyı hesaplatma formulümüzü yazalım
x <- c(rep(NA, 3))
for (i in 1:3) {
  x[i] <- (z1[i] - z2[i]) %% m1
}

# İlk üç rasgele sayıyı yazdırtalım
print(x)

# Bir sonraki üç rasgele sayıyı hesaplayalım
for (i in 4:6) {
  z1_next <- (a1[1]*z1[3] + a1[2]*z1[2] + a1[3]*z1[1]) %% m1
  z2_next <- (a2[1]*z2[3] + a2[2]*z2[2] + a2[3]*z2[1]) %% m2
  x_next <- (z1_next - z2_next) %% m1
  z1 <- c(z1[-1], z1_next)
  z2 <- c(z2[-1], z2_next)
  print(x_next)
}

