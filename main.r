# for testing

w <-c(75, 64, 47.4,66.9, 62.2, 62.2, 58.7, 63.5, 66.6, 64.0, 57.0, 69.0, 56.9, 50.0, 72.0)

w_left <-c(1,2,3,3,4,4,4,5,5,5,5, 7, 8)
w_right = rbeta(1000, 2,10)  # beta dist

x<-c(25,45,50,54,55,61,64,68,72,75,75,78,79,81,83,84,84,85,86,86,86,87,89,89,89,90,91,91,92,100)

y<-c(1600, 1610, 1650, 1680,
     1400, 1700, 1750, 1640)

df <- data.frame(
  Age = c(14, 13, 12, 15, 16),
  Height = c(56.2, 56.7, 57.5, 59.2, 66),
  Weight = c(110, 150,  98,  70, 100)
  )
df$Weight <- c(110, 150, 98, 70, 100)
ore <- data.frame(
  x=c(67, 54, 72, 64),
  y = c(24, 15, 23, 19)
  )

