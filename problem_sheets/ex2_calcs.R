find_F_p_value <- function(D0, D1, n, p, q) {
  f <- ((D0 - D1) / (p - q)) / (D1 / (n - p))
  pf(f, df1 = p - q, df2  = n - p, lower.tail = FALSE)
}

find_LR_p_value <- function(D0, D1, n, p, q) {
  L01 <- n * log(D0/D1)
  pchisq(L01, df = p - q, lower.tail = FALSE)
}

D0 <- 3
D1 <- 2
n <- 10
p <- 2
q <- 1

find_F_p_value(D0, D1, n, p, q)
find_LR_p_value(D0, D1, n, p, q)

D0 <- 13
D1 <- 12
n <- 50
p <- 2
q <- 1

find_F_p_value(D0, D1, n, p, q)
find_LR_p_value(D0, D1, n, p, q)



D0 <- 21
D1 <- 20
n <- 100
p <- 2
q <- 1

find_F_p_value(D0, D1, n, p, q)
find_LR_p_value(D0, D1, n, p, q)

