# data statistics for analysing

baseinfo <- function(x){
# x should be one array generally
    n <- length(x)
    m <- mean(x)
    v <- var(x)
    s <- sd(x)
    cv <- s / m * 100  # 变异系数，刻画数据相对分散性的一种度量

    css <- sum((x-m)^2) #  样本校正平方和: sum((xi - mean(x))^2)
    uss <- sum(x^2)  # 样本未校正平方和: sum(x^2)

    Min <- min(x)
    Q.25 <- quantile(x, 1/4)
    me <- median(x)
    Q.75 <- quantile(x, 3/4)
    Max <- max(x)
    R <- Max - Min  # 样本极差  max- min
    R1 <- Q.75 - Q.25  #  四分位差（半极差）

    sm <- s/sqrt(n)  # 样本标准误   sqrt(var(x) / n / (n-1))
    g1 <- n/((n-1)*(n-2)) * sum((x-m)^3) / s^3 # 样本的偏度系数
    # 用来刻画数据的对称性指标，关于均值对称的数据其偏度系数为0，右侧更分散的数据
    # 偏度系数为正；左侧更分散的数据偏度系数为负。
    g2 <- ((n*(n+1))/((n-1)*(n-2)*(n-3)))*sum((x-m)^4) / s^4 - (3*(n-1)^2)/((n-2)*(n-3))
    # 样本的峰度系数，当峰度系数为正时，两侧极端数据较多；反之，较少。`
    data.frame(
               N=n, # 长度
               Mean = m, # 平均值
               Var = v,  # 方差
               std_dev = s, # 标准差
               CV = cv,     # 变异系数
               CSS = css,   # 样本矫正平方和
               USS = uss,   # 样本未矫正平方和
               Min = Min,   # 最小值
               Q25 = Q.25,   # 上四分位数
               Median = me,  # 中位数
               Q75 = Q.75,  # 下四分位数
               Max = Max,   # 最大值
               R   = R,     # 极差
               R1  = R1,    # 半极差
               SM  = sm,    # 样本标准误
               Skewness = g1, # 样本偏度系数
               Kurtosis = g2, # 样本峰度系数
               row.names = 1
               )   
}
