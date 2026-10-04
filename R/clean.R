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
