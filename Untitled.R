


plot(x = 1:10, y = 4:13)

cor(iris[c('Sepal.Length','Sepal.Width')])
cor(iris[c('Petal.Length','Petal.Width')])
summary(iris[c('Petal.Length','Petal.Width')])
iris.sub0 <- subset(iris, select=c('Petal.Length','Petal.Width'))
summary(iris.sub0)
cor(iris.sub0)
iris.sub1 <- subset(iris, 'Petal.Width' > 0.3)
summary(iris.sub1)
cor(iris.sub1[c('Sepal.Length','Sepal.Width')])

# Categorical vriables
library(mosaic)
tally(~Sepal.Length, data=iris,margins=TRUE) # make sure not to put column name in quotes
# can do TRUE, format = 'prop' for proportion,
tally(~Sepal.Width|Sepal.Length>.1, data=iris, margins=TRUE, format='prop')
mean(~Sepal.Width, data=iris, na.rm=TRUE)
favstats(~Sepal.Length,data=iris) #Standard Deviation Included
favstats(~Sepal.Width,data=iris) #Standard Deviation Included

iris.sub2 <- subset(iris,select=c('Sepal.Length','Petal.Length'))
dfapply(iris.sub2,favstats)


