# Makinelerin üretim yüzdeleri
uretim_yuzdesi <- c(0.10, 0.35, 0.55)
# Makinelerden kaynaklanan arızalı parçacık yüzdeleri
arizali_yuzdesi <- c(0.05, 0.03, 0.01)

# Kusurlu bir parçacığın herhangi bir makinadan gelme olasılığı
pkh <- sum(uretim_yuzdesi * arizali_yuzdesi)

# Kusurlu bir parçacığın birinci makinadan gelme olasılığı
pk_m1 <- uretim_yuzdeleri[1] * arizali_yuzdeleri[1]

# Birinci makinadan üretilmiş olma olasılığı (simülasyon)
n <- 1000000 # Simülasyon sayımızı belirtir

hatali_m1 <- sum(sample(c(TRUE, FALSE), n, replace = TRUE, prob = c(pk_m1, 1 - pk_m1)))
hatali <- sum(sample(c(TRUE, FALSE), n, replace = TRUE, prob = c(pkh, 1 - pkh)))

olasilik <- hatali_m1 / hatali
print(olasilik)

