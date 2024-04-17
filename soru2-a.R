integral_bulmak <- function(fonk, alt_sinir, ust_sinir, n = 1000) {
  # İntegralin başlangıç değeri
  sonuc <- 0
  # İnterval boyutu
  delta <- (ust_sinir - alt_sinir) / n
  # Her bir alt-interval üzerinde döngü
  for (i in 1:n) {
    # Alt-intervalin başlangıç ve bitiş değerleri
    x0 <- alt_sinir + (i - 1) * delta
    x1 <- alt_sinir + i * delta
    # Alanı hesapla ve sonuca ekle
    sonuc <- sonuc + fonk((x0 + x1) / 2) * delta
  }
  return(sonuc)
}

# Fonksiyon tanımı
f <- function(x, r) sqrt(r^2 - x^2)

# Belirli integrali hesapla
integral_sonucu <- function(r) integral_bulmak(function(x) f(x, r), alt_sinir = 0, ust_sinir = r)

# π'nin yaklaşık değerini bul
pi_tahmini <- integral_sonucu(r = 1)
print(pi_tahmini)
