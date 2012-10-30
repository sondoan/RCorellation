# Analyze correlation coeeficient score
# Written by Son Doan, Nov, 2010
# Input, table include data by the following format
# Year week no \t week no \t CDC \t GFT \ Total tweets \t Cullota_best \t Tweet-flu \t Syndromes \t Synd + Flu

# Read input data
#data <- read.table('dat.txt',header=T)

data <- read.table('dat.txt')

# Assign to vector
CDC <- data[[1]]
GFT <- data[[2]]
TotalTweets <- data[[9]]
CullotaBest <- data[[7]]
TweetFlu <- data[[3]]
Synd <- data[[4]]
SyndFlu <- data[[5]]
US <- data[[8]]
SyndFluURL <- data[[10]]
SEM1 <- data[[11]]
SEM1Swine <- data[[12]]
SEM1Negation <- data[[13]]
SyndFluClassified <- data[[14]]
SEM1ClassifiedNegation <- data[[15]]
SEM1Subj <- data[[16]]
SEM1NegSub <- data[[17]]
SEM1NegSubAsthma <- data[[18]]

CullotaBestNorm <- CullotaBest/TotalTweets
TweetFluNorm <- TweetFlu/TotalTweets
SyndNorm <- Synd/TotalTweets
SyndFluNorm <- SyndFlu/TotalTweets
USNorm <- US/TotalTweets
SyndFluURLNorm <- SyndFluURL/TotalTweets
SEM1Norm <- SEM1/TotalTweets
SEM1SwineNorm <- SEM1Swine/TotalTweets
SEM1NegationNorm <- SEM1Negation/TotalTweets
SyndFluClassifiedNorm <- SyndFluClassified/TotalTweets
SEM1ClassifiedNegationNorm <- SEM1ClassifiedNegation/TotalTweets
SEM1SubjNorm <- SEM1Subj/TotalTweets
SEM1NegSubNorm <- SEM1NegSub/TotalTweets
SEM1NegSubAsthmaNorm <- SEM1NegSubAsthma/TotalTweets

# Calculate correlation CDC vs. GFT
print("======================")
print("Correlation score")
cor.test(CDC,GFT)
cor.test(CDC,CullotaBestNorm)
cor.test(CDC,TweetFluNorm)
cor.test(CDC,SyndNorm)
cor.test(CDC,SyndFluNorm)
cor.test(CDC,USNorm)
cor.test(CDC,SyndFluURLNorm)
cor.test(CDC,SEM1Norm)
cor.test(CDC,SEM1SwineNorm)
cor.test(CDC,SEM1NegationNorm)
cor.test(CDC,SyndFluClassifiedNorm)
cor.test(CDC,SEM1ClassifiedNegationNorm)
cor.test(CDC,SEM1SubjNorm)
cor.test(CDC,SEM1NegSubNorm)
cor.test(CDC,SEM1NegSubAsthmaNorm)

# Print out a nice format to copy to Excel file

x = data.frame(CDC,GFT/1000,SyndFluNorm*100000*2,CullotaBestNorm*1000,USNorm*1000000/2)
x

#print("Spearman correlation score")
#cor.test(CDC,GFT,method="spearman")
#cor.test(CDC,CullotaBestNorm,,method="spearman")
#cor.test(CDC,TweetFluNorm,,method="spearman")
#cor.test(CDC,SyndNorm,,method="spearman")
#cor.test(CDC,SyndFluNorm,,method="spearman")

#print(" ========= GFT ===============")
#cor.test(CDC[1:3],GFT[1:3])
#cor.test(CDC[4:6],GFT[4:6])
#cor.test(CDC[7:9],GFT[7:9])
#cor.test(CDC[10:12],GFT[10:12])
#cor.test(CDC[13:15],GFT[13:15])
#cor.test(CDC[16:18],GFT[16:18])
#cor.test(CDC[19:21],GFT[19:21])
#cor.test(CDC[22:24],GFT[22:24])
#cor.test(CDC[25:27],GFT[25:27])
#cor.test(CDC[28:30],GFT[28:30])
#cor.test(CDC[31:35],GFT[31:35])
#
#print(" ========= PART ===============")
#cor.test(CDC[1:3],SyndFluNorm[1:3])
#cor.test(CDC[4:6],SyndFluNorm[4:6])
#cor.test(CDC[7:9],SyndFluNorm[7:9])
#cor.test(CDC[10:12],SyndFluNorm[10:12])
#cor.test(CDC[13:15],SyndFluNorm[13:15])
#cor.test(CDC[16:18],SyndFluNorm[16:18])
#cor.test(CDC[19:21],SyndFluNorm[19:21])
#cor.test(CDC[22:24],SyndFluNorm[22:24])
#cor.test(CDC[25:27],SyndFluNorm[25:27])
#cor.test(CDC[28:30],SyndFluNorm[28:30])
#cor.test(CDC[31:35],SyndFluNorm[31:35])
#
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
#################################### 
#CDC1 <- CDC/100
#test1 <- CDC1[1:20]
#train <- CullotaBestNorm[1:20]*100
#
#glm.model1 = glm(test1 ~ train, family=binomial(link="logit"), na.action=na.pass)
#summary(glm.model1)
#
#cor.test(CDC,CullotaBestNorm)
#
#fit <- predict(glm.model1,data.frame(train=CullotaBestNorm[1:20]*100),type="response")
##cor.test(CDC[1:20],CullotaBestNorm[1:20])
#cor.test(CDC[1:20],fit)
#
#prediction <- predict(glm.model1,data.frame(train=CullotaBestNorm[21:35]*100),type="response")
##cor.test(CDC[21:35],CullotaBestNorm[21:35])
#cor.test(CDC[21:35],prediction)







