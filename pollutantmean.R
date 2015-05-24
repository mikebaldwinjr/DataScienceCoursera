
pollutantmean <- function(directory=getwd(), pollutant, id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating the location of
    ## the CSV files
 data = numeric()

     ## 'id' is an integer vector indicating the monitor ID numbers to be used
for (i in id) {

        newRead = read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), 
            ".csv", sep = ""))

    ## 'pollutant' is a character vector of length 1 indicating the name of the
    ## pollutant for which we will calculate the mean; either 'sulfate' or
    ## 'nitrate'.
        data = c(data, newRead[[pollutant]])
    }

    ## Return the mean of the pollutant across all monitors list in the 'id'
    ## vector (ignoring NA values)
   
    return(mean(data, na.rm = TRUE))
}
## SAMPLE COMMAND:  pollutantmean("specdata", "nitrate", 70:72)
