age_analysis<-function(y,age){
  
  mean_value[1,2]<-(mean(y[y$Age==age & y$Genres == "Action",]$Rating))
  
  mean_value[2,2]<-(mean(y[y$Age==age & y$Genres == "Adventure",]$Rating))
  
  mean_value[3,2]<-(mean(y[y$Age==age & y$Genres == "Animation",]$Rating))
  
  mean_value[4,2]<-(mean(y[y$Age==age & y$Genres == "Children",]$Rating))
  
  mean_value[5,2]<-(mean(y[y$Age==age & y$Genres == "Comedy",]$Rating))
  
  mean_value[6,2]<-(mean(y[y$Age==age & y$Genres == "Crime",]$Rating))
  
  mean_value[7,2]<-(mean(y[y$Age==age & y$Genres == "Documentary",]$Rating))
  
  mean_value[8,2]<-(mean(y[y$Age==age & y$Genres == "Drama",]$Rating))
  
  mean_value[9,2]<-(mean(y[y$Age==age & y$Genres == "Fantasy",]$Rating))
  
  mean_value[10,2]<-(mean(y[y$Age==age & y$Genres == "Film-Noir",]$Rating))
  
  mean_value[11,2]<-(mean(y[y$Age==age & y$Genres == "Horror",]$Rating))
  
  mean_value[12,2]<-(mean(y[y$Age==age & y$Genres == "Musical",]$Rating))
  
  mean_value[13,2]<-(mean(y[y$Age==age & y$Genres == "Mystery",]$Rating))
  
  mean_value[14,2]<-(mean(y[y$Age==age & y$Genres == "Romance",]$Rating))
  
  mean_value[15,2]<-(mean(y[y$Age==age & y$Genres == "Sci-Fic",]$Rating))
  
  mean_value[16,2]<-(mean(y[y$Age==age & y$Genres == "Thriller",]$Rating))
  
  mean_value[17,2]<-(mean(y[y$Age==age & y$Genres == "War",]$Rating))
  
  mean_value[18,2]<-(mean(y[y$Age==age & y$Genres == "Western",]$Rating))
  
  #Sort the mean value vector in descending order
  mean_value<- mean_value[with(mean_value,order(-mean)),]
  
  
  
  print(mean_value[1,])
  
}