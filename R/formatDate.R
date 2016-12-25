#' @author HatMatrix
#' @title formatDate
#' @name formatDate
#' @param x,characte or date or POSIXt
#' @param format,character
#' @description format date using Go stytle
#' @rdname formatDate
#' @examples
#' formatDate('2016-12-23 11:23:45','1997-04-23')
formatDate <- function(x,format="1997-04-23 14:53:42"){
  if(!inherits(x,c("POSIXt","Date"))){
    x <- as.POSIXlt(x)
  }
  format_ <- replaceFormater(format)
  format(x = x,format=format_)
}

asDate <- function(x,format="1997-04-23 14:53:42"){
  format_ <- replaceFormater(format)
  as.Date(x = x,format_)
}
