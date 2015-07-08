source("/home/shivam/R Project/Movie analysis/occ_analysis.R")
source("/home/shivam/R Project/Movie analysis/age_analysis.R")

user<-read.table("/home/shivam/R Project/Movie analysis/users.txt",sep="$",header=F)
movie<-read.csv("/home/shivam/R Project/Movie analysis/movies.txt",sep="$",header=F)
rating<-read.table("/home/shivam/R Project/Movie analysis/ratings.txt",sep="$",header=F)


colnames(user)<-c("UserID","Gender","Age","Occupation","Zip-code")
colnames(movie)<-c("ID","Title","Genres")
colnames(rating)<-c("UserID","ID","Rating","Timestamp")


x<-merge(rating,movie,by= "ID")
y<-merge(x,user,by = "UserID")


mean_value<-data.frame(gen=c("Action","Adventure","Animation","Children","Comedy","Crime","Documentary","Drama","Fantasy","Film-Noir","Horror","Musical","Mystery","Romance","Sci-Fi","Thriller","War","Western"),mean=vector("numeric",18))

#Occupation wise analysis
occupations<-c("others","academic/educator","artist","clerical/admin","college/grad student","customer service","doctor/health care","executive/managerial","farmer","homemaker","K-12 student","lawyer","programmer","retired","sales/marketing","scientist","self-employed","technician/engineer","tradesman/craftsman","unemployed","writer")
for (i in 0:20){
      print(occupations[i+1])
      occ_analysis(y=y,occ=i)
}


#Age Analysis
age <- c("1","18","25","35","45","50","56")
for (i in 1:7){
  print(age[i])
  age_analysis(y=y,age=as.integer(age[i]))
}
