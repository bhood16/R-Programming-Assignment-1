complete <- function (directory, id=1:332){
  df <- data.frame()
  col_names <- c("id", "nobs")
  for(i in id){
    if(i < 10){tempFrame <- read.csv(paste(directory, "/","00",i,".csv", sep=""))}
    else if (i >= 10 & i <100){tempFrame <- read.csv(paste(directory, "/","0",i,".csv", sep=""))}
    else{tempFrame <- read.csv(paste(directory, "/",i,".csv", sep=""))}
    data <- tempFrame[complete.cases(tempFrame),]
    dataf <- data.frame(i, nrow(data))
    df <- rbind(df, dataf)
  }
  
  names(df) <- col_names
  return(df)
  
}