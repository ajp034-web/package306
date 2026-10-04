#' Clean a Data Set
#'
#' @param data_frame A data frame that needs to be cleaned for easier use
#' @param remove_missing A logical argument that tells the function to remove incomplete cases
#' @param remove_duplicates A logical argument that tells the function to remove duplicate cases
#'
#' @return The original data frame after being cleaned
#' @export
#' @examples
#' data <- data.frame(
#'   Name = c("Taylor", "Taylor", "Adele"),
#'   Score = c(10, 10, NA)
#' )
#' clean(data, remove_missing = FALSE, remove_duplicate = FALSE)
#' clean(data, remove_missing = FALSE)
#' clean(data, remove_duplicate = FALSE)
#' clean(data)
#'
#' @export


clean<- function(data_frame, remove_missing = TRUE, remove_duplicate = TRUE){
  ## Makes Lower Case
  names(data_frame) <- tolower(names(data_frame))

  ## Removes incomplete cases
  if(remove_missing){
    data_frame <- data_frame[complete.cases(data_frame), ]
  }

  ## Remove duplicates
  if(remove_duplicate){
    data_frame <- data_frame[!duplicated(data_frame), ]
  }
  return(data_frame)
}

