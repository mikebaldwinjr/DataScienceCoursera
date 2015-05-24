complete <- function(directory=getwd(), id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating the location of
    ## the CSV files
 nobs = numeric()
    ## 'id' is an integer vector indicating the monitor ID numbers to be used
 for (i in id) {

        newRead = read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), 
            ".csv", sep = ""))
        nobs = c(nobs, sum(complete.cases(newRead)))
    }
    ## Return a data frame of the form: id nobs 1 117 2 1041 ...  where 'id' is
    ## the monitor ID number and 'nobs' is the number of complete cases
    return(data.frame(id, nobs))
}
##SAMPLE COMMAND: complete("specdata", c(2, 4, 8, 10, 12))