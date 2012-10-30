# Analyze correlation coeeficient score
# Written by Son Doan, Nov, 2010
# Input, table include data by the following format
# Year week no \t week no \t CDC \t GFT \ Total tweets \t Cullota_best \t Tweet-flu \t Syndromes \t Synd + Flu

# Read input data
data1 <- read.table('tmp-count')
data <- read.table('dat.txt')

# Assign to vector
CDC <- data[[1]]
# GFT <- data[[2]]
TotalTweets <- data[[9]]
# CullotaBest <- data[[7]]
# TweetFlu <- data[[3]]
# Synd <- data[[4]]
# SyndFlu <- data[[5]]
# US <- data[[8]]
# SyndFluURL <- data[[10]]
# SEM1 <- data[[11]]
# SEM1Swine <- data[[12]]
# SEM1Negation <- data[[13]]
# SyndFluClassified <- data[[14]]
# SEM1ClassifiedNegation <- data[[15]]
# SEM1Subj <- data[[16]]
# SEM1NegSub <- data[[17]]
# SEM1NegSubAsthma <- data[[18]]

new <- data1[[3]]

# CullotaBestNorm <- CullotaBest/TotalTweets
# TweetFluNorm <- TweetFlu/TotalTweets
# SyndNorm <- Synd/TotalTweets
# SyndFluNorm <- SyndFlu/TotalTweets
# USNorm <- US/TotalTweets
# SyndFluURLNorm <- SyndFluURL/TotalTweets
# SEM1Norm <- SEM1/TotalTweets
# SEM1SwineNorm <- SEM1Swine/TotalTweets
# SEM1NegationNorm <- SEM1Negation/TotalTweets
# SyndFluClassifiedNorm <- SyndFluClassified/TotalTweets
# SEM1ClassifiedNegationNorm <- SEM1ClassifiedNegation/TotalTweets
# SEM1SubjNorm <- SEM1Subj/TotalTweets
# SEM1NegSubNorm <- SEM1NegSub/TotalTweets
# SEM1NegSubAsthmaNorm <- SEM1NegSubAsthma/TotalTweets

newNorm <- new/TotalTweets

# Calculate correlation score
# print("======================")
# print("Correlation score")
# cor.test(CDC,GFT)
# cor.test(CDC,CullotaBestNorm)
# cor.test(CDC,TweetFluNorm)
# cor.test(CDC,SyndNorm)
# cor.test(CDC,SyndFluNorm)
# cor.test(CDC,USNorm)
# cor.test(CDC,SyndFluURLNorm)
# cor.test(CDC,SEM1Norm)
# cor.test(CDC,SEM1SwineNorm)
# cor.test(CDC,SEM1NegationNorm)
# cor.test(CDC,SyndFluClassifiedNorm)
# cor.test(CDC,SEM1ClassifiedNegationNorm)
# cor.test(CDC,SEM1SubjNorm)
# cor.test(CDC,SEM1NegSubNorm)
# cor.test(CDC,SEM1NegSubAsthmaNorm)

print("=============================")
print("NEW SCORE ")

cor.test(CDC,newNorm)






