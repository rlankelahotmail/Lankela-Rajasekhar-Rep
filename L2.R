id<-c(101,102,103)
name=c('bob','alice','john')
marks<-c(78.25,59.45,63.85)
students<-data.frame(id,name,marks)
students
report<-subset(students,marks>60)
report
report<-subset(students,marks>60,select=c(name))
report
report<-subset(students,marks>60,select=name:marks)
report
studentsedit<-edit(students)
studentsedit
library(ggplot2)  
library(dplyr)
scatter.smooth(students$marks~students$name)
barplot(students$marks,names.arg=students$name, xlab='Names', ylab='marks', col='red',
    main='Student Marks')
barplot(students$marks,names.arg=students$name, xlab='Names', ylab='marks', col='green',
        main='Student Marks',horiz=T)
  