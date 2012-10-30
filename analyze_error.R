# Analyze correlation coeeficient score
# Written by Son Doan, Nov, 2010
# Input, table include data by the following format
# Year week no \t week no \t CDC \t GFT \ Total tweets \t Cullota_best \t Tweet-flu \t Syndromes \t Synd + Flu

# Read input data
data <- read.table('dat4.txt',header=T)

# Assign to vector
CDC <- data[[3]]
GFT <- data[[4]]
TotalTweets <- data[[5]]
CullotaBest <- data[[6]]
TweetFlu <- data[[7]]
Synd <- data[[8]]
SyndFlu <- data[[9]]

CullotaBestNorm <- CullotaBest/TotalTweets
TweetFluNorm <- TweetFlu/TotalTweets
SyndNorm <- Synd/TotalTweets
SyndFluNorm <- SyndFlu/TotalTweets

# Calculate correlation CDC vs. GFT
print("======================")
print("Correlation score")
cor.test(CDC,GFT)
cor.test(CDC,CullotaBestNorm)
cor.test(CDC,TweetFluNorm)
cor.test(CDC,SyndNorm)
cor.test(CDC,SyndFluNorm)

print("Spearman correlation score")
cor.test(CDC,GFT,method="spearman")
cor.test(CDC,CullotaBestNorm,,method="spearman")
cor.test(CDC,TweetFluNorm,,method="spearman")
cor.test(CDC,SyndNorm,,method="spearman")
cor.test(CDC,SyndFluNorm,,method="spearman")

print(" ========= GFT ===============")
cor.test(CDC[1:3],GFT[1:3])
cor.test(CDC[4:6],GFT[4:6])
cor.test(CDC[7:9],GFT[7:9])
cor.test(CDC[10:12],GFT[10:12])
cor.test(CDC[13:15],GFT[13:15])
cor.test(CDC[16:18],GFT[16:18])
cor.test(CDC[19:21],GFT[19:21])
cor.test(CDC[22:24],GFT[22:24])
cor.test(CDC[25:27],GFT[25:27])
cor.test(CDC[28:30],GFT[28:30])
cor.test(CDC[31:35],GFT[31:35])

print(" ========= PART ===============")
cor.test(CDC[1:3],SyndFluNorm[1:3])
cor.test(CDC[4:6],SyndFluNorm[4:6])
cor.test(CDC[7:9],SyndFluNorm[7:9])
cor.test(CDC[10:12],SyndFluNorm[10:12])
cor.test(CDC[13:15],SyndFluNorm[13:15])
cor.test(CDC[16:18],SyndFluNorm[16:18])
cor.test(CDC[19:21],SyndFluNorm[19:21])
cor.test(CDC[22:24],SyndFluNorm[22:24])
cor.test(CDC[25:27],SyndFluNorm[25:27])
cor.test(CDC[28:30],SyndFluNorm[28:30])
cor.test(CDC[31:35],SyndFluNorm[31:35])

# ######################################################
# # ====================================================
# ## FIT LINEAR MODEL
# # ====================================================
# ### SYNDROMES+FLU vs CDC ###
#
#print("========= SYNDROME + FLU VS CDC ===============")
#
# # --------------------------------
# # TEST FOR LOGIT MODEL 
# # --------------------------------
# 
################################### 
#CDC1 <- CDC/100
#test1 <- CDC1[1:20]
#train <- SyndFluNorm[1:20]*100
#
#CDC1
#train
#
#glm.model1 = glm(test1 ~ train, family=binomial(link="logit"), na.action=na.pass)
#summary(glm.model1)
#
#fit <- predict(glm.model1,data.frame(train=SyndFluNorm[1:20]*100),type="response")
#fit
#x <- CDC[1:20]/100
#y <- fit
#cor.test(x,y)
#
#prediction <- predict(glm.model1,data.frame(train=SyndFluNorm[21:35]*100),type="response")
#x <- CDC[21:35]
#y <- prediction
#cor.test(x,y)
#cor.test(CDC[21:35],prediction)
#
################################### 
CDC1 <- CDC/100
test1 <- CDC1[1:20]
train <- CullotaBestNorm[1:20]*100

glm.model1 = glm(test1 ~ train, family=binomial(link="logit"), na.action=na.pass)
summary(glm.model1)

fit <- predict(glm.model1,data.frame(train=CullotaBestNorm[1:20]*100),type="response")
fit
cor.test(CDC[1:20]/100,fit)

#x <- CullotaBestNorm[1:20]
#y <- fit
#plot(x,y)
#plot(x)
#plot(y)
#lines(y,col='yellow')

#prediction <- predict(glm.model1,data.frame(train=CullotaBestNorm[21:35]*100),type="response")

prediction <- predict(glm.model1,data.frame(train=CullotaBestNorm[21:35]*100),type="response")
prediction
CDC[21:35]/100
cor.test(CDC[21:35]/100,prediction)
cor.test(CullotaBestNorm[21:35]*100,prediction)
cor.test(CDC[21:35]/100,CullotaBestNorm[21:35]*100)
cor.test(CDC[1:20],CullotaBestNorm[1:20])
cor.test(CDC[1:35],CullotaBestNorm[1:35])

x <- CDC[21:35]
y <- prediction
x
y
cor.test(x,y)

#plot(x,y)
#plot(x)
#plot(y)
#lines(y,col='yellow')







