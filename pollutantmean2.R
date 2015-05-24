pollutantmean2 <- function(directory = getwd(), pollutant, id ) {

    # add one or two zeros to ID so that they match the CSV file names
    filenames <- sprintf("%03d.csv", id)

    # path to specdata folder
    # if no path is provided, default is working directory
    filedir <- file.path(directory, filenames)

    # get the data from selected ID or IDs from the specified path
    dataset <- read.csv(filedir, header = TRUE)

    # calculate mean removing all NAs
    polmean <- mean(dataset[[pollutant]], na.rm = TRUE)

    # return mean
    polmean

}