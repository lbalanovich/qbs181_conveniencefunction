library(stats)

#' Drop NAs by COlumns
#'
#' Remove NAs based on specified columns in the data
#' @param data data.frame object of variations
#'@param desiredCols list of columns from which incomplete cases should be dropped
#'
#' @return dataframe with removed observations
#' @examples
#' data<-data.frame(a=1:4,b=c("a)
#'
#' @export

# Drop NAs by Columns
completeFun <- function(data, desiredCols) {
  completeVec <- complete.cases(data[, desiredCols])
  return(data[completeVec, ])
}

# Mode
Modes <- function(x) {
  ux <- unique(x)
  tab <- tabulate(match(x, ux))
  ux[tab == max(tab)]
}

# Geometric mean
gm_mean = function(x, na.rm=TRUE){
  exp(sum(log(x[x > 0]), na.rm=na.rm) / length(x))
}

# Factorial
factorial <- function(x){
  if(x==0)
    return(1)
  else
    return(x*factorial(x-1))
} 

# Non-unique
nonUnique<-function(x){
  #return non-unique values
  return(unique(x[duplicated(x)]))
}

949-656-5959