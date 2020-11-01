simulation <- function(prob1, prob2) {
  not_20sec<-rbinom(n=10000, size=1, prob=prob1)
  y=c()
  for (i in not_20sec){
    if (i==1){
      y<-c(y,rbinom(n=10, size=1, prob=prob2))
    }
    else{
      y<-c(y,replicate(10,0))
    }
  }
  print(sum(y==1)/length(y))

}

simulation(1-0.2314,0.7941)
