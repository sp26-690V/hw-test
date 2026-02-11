
# clean memory ------------------------------------------------------------
rm(list = ls())


# read in data ------------------------------------------------------------
#set working directory

filename="https://github.com/sp26-690V/hw-test/raw/main/theFile.csv"
mydata=read.csv(filename)


# see data ----------------------------------------------------------


head(mydata)


# see data types ----------------------------------------------------------

str(mydata)

# deliverable 1 ----------------------------------------------------------
library(ggplot2)

base= ggplot(data=mydata) 
del1Draft= base + geom_bar(aes(x=LocaleType))
del1Draft


# save del1Draft ----------------------------------------------------------
saveRDS(del1Draft, file = "del1Draft.rds")


# deliverable 2 ----------------------------------------------------------

del2Draft= base + geom_histogram(aes(x=Student.Teacher.Ratio))
del2Draft


# save del2Draft ----------------------------------------------------------
saveRDS(del2Draft, file = "del2Draft.rds")


# deliverable 3 ----------------------------------------------------------

del3Draft= base + geom_point(aes(x=Student.Teacher.Ratio,
                                 y=Free.Lunch))
del3Draft 

# save del3Draft ----------------------------------------------------------
saveRDS(del3Draft, file = "del3Draft.rds")

