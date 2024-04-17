# Veri seti
q <- c(0.11, 0.98, 0.66, 0.76, 0.75)

# Kolmogorov-Smirnov testi
test_kolmogorov <- ks.test(q, "punif")
print(test_kolmogorov)