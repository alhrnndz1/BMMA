# Load necessary library
library(dplyr)

# Set the path to the directory containing the csv files
path <- "/blue/anaporras/share/new_outputs/"

# List ALL files in the directory that end in .csv
files <- list.files(path, pattern="*.csv", full.names=TRUE)

# Check if there are any CSV files in the directory
if(length(files) == 0) {
  stop("No CSV files found in the specified directory.")
}

# Read and combine all CSV files
combined_data <- bind_rows(lapply(files, read.csv))

# Write combined data to a new CSV file
write.csv(combined_data, file=paste0(path, "combined_data.csv"), row.names=FALSE)

cat("All .csv files have been combined and saved as 'combined_data.csv'.\n")
