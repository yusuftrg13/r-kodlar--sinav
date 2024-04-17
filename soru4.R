# Öğrenci numarasıyla set.seed komutu
set.seed(214603007)

# [0,1) aralığında 20 adet düzgün dağılmış rasgele sayı dizisi üretme
xt <- round(runif(20, 0, 1), 1)

# Ki-kare uyum iyiliği testi
chisq_testcq <- chisq.test(x)
print("Ki-kare uyum iyiliği testi:")
print(chisq_testcq)

# Kolmogorov-Smirnov testi
ks_testks <- ks.test(xt, "punif")
print("Kolmogorov-Smirnov testi:")
print(ks_testks)