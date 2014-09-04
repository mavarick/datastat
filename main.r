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

kplan= read.table("/Users/apple/Documents/projects/algos/kplan/r_data/rdata.d", header=T)
feature_names = attributes(kplan)$names
features = kplan[2:length(kplan)]

#total:

#m1_otherfee+m2_otherfee+m3_otherfee+m4_otherfee+a_rmb_m2overduefee+a_rmb_m0overduecnt+m4_balance+
#  m2_balance+m3_balance+m1_balance+m4_cash+m4_minpay+m3_amortbill+m4_amortfee+m2_amortfee+m3_amortfee+
#  m1_amortfee
select_fields0 <- c("m4_cashlimit","m4_cash","m1_payment","m4_overduefee","m3_payment","a_rmb_m1overduefee","m3_expense","m2_cashlimit","a_rmb_m4overduefee_ratio","a_rmb_m0is_overdue","m1_cash","billdateadvanced","m1_expense","m2_minpay","m2_amortbill","m2_overduefee","m4_payment","m1_amortbill","a_rmb_m2overduefee","a_rmb_m4overduefee","m1_creditlimit","m3_overduefee","m2_amortpay","m3_balance","billdateadjusted","m2_creditlimit","m1_amortfee","m3_amortpay","m2_interest","billdatepostponed","m3_minpay","m1_amortpay","a_rmb_m0overduecnt","m4_creditlimit","m4_amortbill","m4_otherfee","m4_amortfee","m2_balance","m3_otherfee","m4_balance","a_rmb_m0overduefee","a_rmb_m2is_overdue","billmissed","a_rmb_m2overduefee_ratio","m2_payment","m4_expense","m2_otherfee","m2_amortfee","a_rmb_m3overduefee","m1_cashlimit","a_rmb_m3overduefee_ratio","m1_minpay","a_rmb_m4is_overdue","m3_creditlimit","m1_otherfee","m4_amortpay","a_rmb_m3is_overdue","m3_cash","a_rmb_m1is_overdue","a_rmb_m0overduefee_ratio","m3_cashlimit","m1_balance","m2_cash","m3_amortfee","m4_interest","a_rmb_m1overduefee_ratio","m2_expense","m4_minpay","m1_interest","m3_amortbill","m3_interest","m1_overduefee")
select_fields1 <- c("m1_payment","m2_cashlimit","m4_cashlimit","m1_cashlimit","m4_payment","m3_payment","m1_balance","m4_balance","m3_cash","m2_cash","m1_cash","a_rmb_m2overduefee","m4_cash","m1_interest","a_rmb_m3is_overdue","a_rmb_m2is_overdue","a_rmb_m4is_overdue","a_rmb_m0overduecnt","a_rmb_m0is_overdue");
select_fields <- c("m4_cashlimit", "m4_cash", "m1_payment", "m4_overduefee", "m3_payment", "a_rmb_m1overduefee", "m3_expense", "m2_cashlimit", "a_rmb_m4overduefee_ratio", "a_rmb_m0is_overdue", "m1_cash", "billdateadvanced", "m1_expense", "m2_minpay", "m2_amortbill", "m2_overduefee", "m4_payment", "m1_amortbill", "a_rmb_m2overduefee", "a_rmb_m4overduefee", "m1_creditlimit", "m3_overduefee", "m2_amortpay");
select_fields2 <- c("m1_creditlimit","m3_overduefee","m2_amortpay","m3_balance","billdateadjusted","m2_creditlimit","m1_amortfee","m3_amortpay","m2_interest","billdatepostponed","m3_minpay","m1_amortpay","a_rmb_m0overduecnt","m4_creditlimit","m4_amortbill","m4_otherfee","m4_amortfee","m2_balance","m3_otherfee","m4_balance","a_rmb_m0overduefee","a_rmb_m2is_overdue","billmissed","a_rmb_m2overduefee_ratio","m2_payment","m4_expense","m2_otherfee","m2_amortfee")

select_fields_mix2 <- c("a_rmb_m0is_overdue","a_rmb_m0overduecnt","a_rmb_m4is_overdue","a_rmb_m2is_overdue","m1_interest","m4_cash","m1_cash","m2_cash","m3_cash","m4_balance","m1_balance","m1_cashlimit","m4_cashlimit","m2_cashlimit","m1_payment")
select_fields_mix3 <- c("m1_payment","m2_cashlimit","m4_cashlimit","m1_balance","m3_cash","m2_cash","m1_cash","m4_cash","m1_interest","a_rmb_m2is_overdue","a_rmb_m4is_overdue","a_rmb_m0overduecnt","a_rmb_m0is_overdue")
select_fields_mix4 <- c("m1_payment","m2_cashlimit","m3_cash","m2_cash","m1_cash","m4_cash","m1_interest","a_rmb_m2is_overdue","a_rmb_m4is_overdue","a_rmb_m0overduecnt","a_rmb_m0is_overdue")
select_fields_mix5 <- c("m1_payment","m2_cashlimit","m2_cash","m1_cash","m4_cash","m1_interest","a_rmb_m2is_overdue","a_rmb_m4is_overdue","a_rmb_m0overduecnt","a_rmb_m0is_overdue")

select_fields_1se1 <- c("m4_cashlimit","m4_cash","m1_payment","m4_overduefee","m3_payment","a_rmb_m1overduefee","m3_expense","m2_cashlimit","a_rmb_m4overduefee_ratio","a_rmb_m0is_overdue","m1_cash","billdateadvanced","m1_expense","m2_minpay","m2_amortbill","m2_overduefee")
select_fields_1se2 <- c("m2_amortbill","m1_payment","m2_cashlimit","m4_cashlimit","m3_payment","m1_expense","m2_minpay","a_rmb_m1overduefee","m1_cash","m4_cash","m4_overduefee","m2_overduefee","a_rmb_m0is_overdue")
glm.sol = glm(value~a_rmb_m0overduefee+billmissed+a_rmb_m2overduefee_ratio+m2_payment+m4_expense+m2_otherfee+m2_amortfee+a_rmb_m3overduefee+a_rmb_m3overduefee_ratio+m1_minpay+m3_creditlimit+m1_otherfee+m4_amortpay+a_rmb_m1is_overdue+a_rmb_m0overduefee_ratio+m3_cashlimit+m3_amortfee+m4_interest+a_rmb_m1overduefee_ratio+m2_expense+m4_minpay+m3_amortbill+m3_interest+m1_overduefee
                , family=binomial, data=kplan)
glm.sol = glm(value~m1_payment+m2_cashlimit+m2_cash+m1_cash+m4_cash+m1_interest+a_rmb_m2is_overdue+a_rmb_m4is_overdue+a_rmb_m0overduecnt+a_rmb_m0is_overdue
              , family=binomial, data=kplan)
glm.sol = glmnet(as.matrix(kplan)[,2:72], kplan$value, family='binomial')
glm.sol = glmnet(as.matrix(kplan[select_fields]), kplan$value, family='binomial')
summary(glm.sol)

# use glmnet
x = as.matrix(kplan[,2:length(kplan)])
y = kplan$value
#cvfit = cv.glmnet(x, y, nfolds=10)
x = as.matrix(kplan[select_fields])
cvfit = cv.glmnet(x, y, family = "binomial", type.measure = "auc", nfolds=7, parallel=T)

cvfit = cv.glmnet(x, y, family = "binomial", type.measure = "class",nfolds=10,, parallel=T)
# type.measure: mse, class, auc, deviance. c2lass gives misclassification error
plot(cvfit)
plot(cvfit, xvar='dev', label=T)
lambda_min = cvfit$lambda.min
coef(cvfit, s = "lambda.min")  # 最优lambda条件下的系数

# predict
pred_y = predict(cvfit, newx = x, s = 'lambda.min')

log2y <- function(value){
  if(value >= 0.5){
    data.frame(value=1)
  }else{
    data.frame(value=0)
  }
}


# analysis of woe os kplan features
info<-data.frame(
split_points = c(0, 200.0,300.0,500.0,600.0,1000.0,1500.0,2000.0,3000.0),
woe_ratio = c(
  -41.4458672035,5.66845631621,0.0662042117809,0.290908359186,18.2934033845,10.7134872383,5.31075005951,6.10496871147,-5.6917047451,10.4452522688
),
dist_ratio = c(0.424836601307,0.466666666667,0.448717948718,0.636363636364,0.507389162562,0.546511627907,0.603053435115,0.584905660377,0.782608695652)
)
pairs(info)
#split_points = c(0, split_points)
#plot(split_points, woe_ratio, '-')
data = [
  -9068.0,-5257.0,-3600.0,-2560.0,-1900.0,-1352.0,-1000.0,-644.0,-365.0
  -41.4458672035,5.66845631621,0.0662042117809,0.290908359186,18.2934033845,10.7134872383,5.31075005951,6.10496871147,-5.6917047451,10.4452522688
  0.175656984786,0.109660574413,0.115979381443,0.115719063545,0.0966542750929,0.104265402844,0.11005353956,0.109182935647,0.12285336856,0.104545454545
  ]







