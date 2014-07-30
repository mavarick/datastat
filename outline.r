# outline the buck of samples lines of different fields

outline <- function(x, txt =TRUE){
    if (is.data.frame(x) == TRUE){
        x <- as.matrix(x)
    }
    m <- nrow(x); n <- ncol(x)
    plot(c(1,n), c(min(x), max(x)), type = 'n',
         main = "The outline graph of Data",
         xlab = "Number", ylab = 'Value')
    for (i in 1:m){
        lines(x[i,], col=i)
        if (txt == TRUE){
            k <- dimnames(x)[[1]][i]
            text(1 + (i-1)%%n, x[i, 1+(i-1)%%n], k)
        }
    }
}
