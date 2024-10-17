exact <- c(1:100)
stirling <- c(1:100)
rel.err <- c(1:100)

for (i in 1:100) {
  exact[i] <- factorial(i)
  stirling[i] <- (i/exp(1))^i * sqrt(2*pi*i)
}

rel.err <- abs((stirling-exact)/exact)
plot(1:length(rel.err), rel.err, xlab = "k")
plot(1:length(rel.err), log10(rel.err), xlab = "k")
