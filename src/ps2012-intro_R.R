
## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*A%20first%20example%20of%20an%20R%20object][A-first-example-of-an-R-object:1]]

x <- 1 ## assign value 1 to symbol/variable "x"
x      ## or: print(x)

## A-first-example-of-an-R-object:1 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*A%20first%20example%20of%20an%20R%20object][A-first-example-of-an-R-object:2]]

x + x

## A-first-example-of-an-R-object:2 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*A%20first%20example%20of%20an%20R%20object][A-first-example-of-an-R-object:3]]

x * 100

## A-first-example-of-an-R-object:3 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*A%20second%20example%20of%20an%20R%20object][A-second-example-of-an-R-object:1]]

x.vector <- c(1,2,3,4) ## c() means "concatenate" 
x.vector

## A-second-example-of-an-R-object:1 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*A%20second%20example%20of%20an%20R%20object][A-second-example-of-an-R-object:2]]

x.matrix <- matrix(c(1,2,3,4,5,6), ncol = 3)
x.matrix

## A-second-example-of-an-R-object:2 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*A%20third%20example%20of%20an%20R%20object][A-third-example-of-an-R-object:1]]

oTtest <- t.test(rnorm(100) ~ sample(0:1, 100, replace = TRUE))
oTtest

## A-third-example-of-an-R-object:1 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*A%20third%20example%20of%20an%20R%20object][A-third-example-of-an-R-object:2]]

oTtest$statistic

## A-third-example-of-an-R-object:2 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*A%20third%20example%20of%20an%20R%20object][A-third-example-of-an-R-object:3]]

oTtest$p.value

## A-third-example-of-an-R-object:3 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Important%20data%20types/data%20structures%20(cont'd)][Important-data-types/data-structures-\(cont\'d\):1]]

x.scalar <- 1
x.scalar

## Important-data-types/data-structures-\(cont\'d\):1 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Important%20data%20types/data%20structures%20(cont'd)][Important-data-types/data-structures-\(cont\'d\):2]]

x.vector <- c(1,2,3)
x.vector

## Important-data-types/data-structures-\(cont\'d\):2 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Important%20data%20types/data%20structures%20(cont'd)][Important-data-types/data-structures-\(cont\'d\):3]]

x.factor <- factor(c(1,2,3), labels = c("low", "middle", "high"))
x.factor

## Important-data-types/data-structures-\(cont\'d\):3 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Important%20data%20types/data%20structures%20(cont'd)][Important-data-types/data-structures-\(cont\'d\):4]]

x.df <- data.frame(ID = c(1,2,3), sex = factor(c("f", "f", "m")), 
                   age = c(22, 45, 12))
x.df

## Important-data-types/data-structures-\(cont\'d\):4 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Important%20data%20types/data%20structures%20(cont'd)][Important-data-types/data-structures-\(cont\'d\):5]]

x.list <- list(a = c(1,2,3), b = x.df)
x.list

## Important-data-types/data-structures-\(cont\'d\):5 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Missing%20data][Missing-data:1]]

x.na <- c(1,2,3, NA, 5)
mean(x.na)

## Missing-data:1 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Missing%20data][Missing-data:2]]

mean(x.na, na.rm = TRUE)

## Missing-data:2 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Loading%20a%20dataset][Loading-a-dataset:1]]

setwd("../data")
library(foreign)
dTeachExp <- read.spss(file = "dTeachExpRed.sav", 
                       to.data.frame = TRUE, 
                       use.value.labels = FALSE)
names(dTeachExp)

## Loading-a-dataset:1 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Inspect%20your%20data][Inspect-your-data:1]]

head(dTeachExp) # prints first 6 cases

## Inspect-your-data:1 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Accessing%20elements%20of%20a%20data%20frame][Accessing-elements-of-a-data-frame:1]]

dTeachExp[,"T"] # access variable T

## Accessing-elements-of-a-data-frame:1 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Accessing%20elements%20of%20a%20data%20frame][Accessing-elements-of-a-data-frame:2]]

dTeachExp$T # access variable T, shortcut for dTeachExp[,"T"]

## Accessing-elements-of-a-data-frame:2 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Accessing%20elements%20of%20a%20data%20frame][Accessing-elements-of-a-data-frame:3]]

dTeachExp[1:4,c("T", "weeks")] # access first 4 obs of T and weeks

## Accessing-elements-of-a-data-frame:3 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Creating%20new%20variables][Creating-new-variables:1]]

dTeachExp$SE <- sqrt(dTeachExp$V)
head(round(dTeachExp, digits = 2))

## Creating-new-variables:1 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Removing%20cases%20I%20(subsetting/indexing)][Removing-cases-I-\(subsetting/indexing\):1]]

subset(dTeachExp, weekcat == 0)

## Removing-cases-I-\(subsetting/indexing\):1 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Removing%20cases%20I%20(subsetting/indexing)][Removing-cases-I-\(subsetting/indexing\):2]]

subset(dTeachExp, weekcat == 0 & T > 1)

## Removing-cases-I-\(subsetting/indexing\):2 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Removing%20cases%20II][Removing-cases-II:1]]

dTeachExp[dTeachExp$weekcat == 0, ]

## Removing-cases-II:1 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Removing%20cases%20II][Removing-cases-II:2]]

dTeachExp[dTeachExp$weekcat == 0 & dTeachExp$T > 1, ]

## Removing-cases-II:2 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Removing%20(or%20keeping)%20cases%20III][Removing-\(or-keeping\)-cases-III:1]]

keep.ids <- c(1, 4, 6, 8)
dTeachExp.new <- dTeachExp[dTeachExp$ID %in% keep.ids, ]
dTeachExp.new

## Removing-\(or-keeping\)-cases-III:1 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Removing%20missing%20values][Removing-missing-values:1]]

dTeachExp.missing <- dTeachExp
dTeachExp.missing$T[c(1, 3, 6)] <- NA
dTeachExp.missing$weekcat[c(2, 3)] <- NA
head(dTeachExp.missing)

## Removing-missing-values:1 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Removing%20missing%20values%20(cont'd)][Removing-missing-values-\(cont\'d\):1]]

dTeachExp.missing[!is.na(dTeachExp.missing$T), ][1:6,]

## Removing-missing-values-\(cont\'d\):1 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Removing%20missing%20values%20(cont'd)][Removing-missing-values-\(cont\'d\):2]]

na.omit(dTeachExp.missing)[1:6,]

## Removing-missing-values-\(cont\'d\):2 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Removing%20variables][Removing-variables:1]]

(dTeachExp.names <- names(dTeachExp))

## Removing-variables:1 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Removing%20variables][Removing-variables:2]]

dTeachExp[1:2, c(dTeachExp.names)[-c(1,3)]]

## Removing-variables:2 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Removing%20variables][Removing-variables:3]]

!(dTeachExp.names %in% c("weeks", "weekcat"))

## Removing-variables:3 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Removing%20variables][Removing-variables:4]]

dTeachExp[1:2,!(dTeachExp.names %in% c("weeks", "weekcat"))]

## Removing-variables:4 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*Make%20up%20some%20data][Make-up-some-data:1]]

df.fake <- data.frame(
           x = rnorm(10), # standard normal distr.
           y = rnorm(10, mean = 10, sd = 5),
           sex = factor(rep(c("f", "m"), 5))
           )
df.fake[1:4, ] # show rows 1 to 4

## Make-up-some-data:1 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*The%20%3Dsummary()%3D%20function][The-=summary\(\)=-function:1]]

summary(df.fake)

## The-=summary\(\)=-function:1 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*The%20%3Dsummary()%3D%20function][The-=summary\(\)=-function:2]]

summary(df.fake$x)

## The-=summary\(\)=-function:2 ends here

## [[file:e:/projects/software/ps2012r_intro/slide/ps2012-intro_R.org::*The%20%3Dmean()%3D%20and%20%3Dmedian()%3D%20functions][The-=mean\(\)=-and-=median\(\)=-functions:1]]

mean(df.fake$x)
mean(df.fake$y)

## The-=mean\(\)=-and-=median\(\)=-functions:1 ends here
