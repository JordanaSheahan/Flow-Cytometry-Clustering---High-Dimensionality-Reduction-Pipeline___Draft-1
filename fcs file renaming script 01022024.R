# Load necessary libraries
library(readr)

# Specify the paths to the CSV mapping file and the folder with CSV files
csv_mapping_file <- "W:/Collaborative Projects/BSNRF/Spectre/label_mapping.csv"
folder_with_csv_files <- "W:/Collaborative Projects/BSNRF/Spectre/raw_data_export"

# Read the CSV mapping file
mapping_data <- read.csv(csv_mapping_file, header = FALSE, stringsAsFactors = FALSE, col.names = c("old_label", "new_label"))

# Print the mapping data
print(mapping_data)

# Rename files based on the mapping
for (i in 1:nrow(mapping_data)) {
  old_label <- mapping_data$old_label[i]
  new_label <- paste(mapping_data$new_label[i], ".csv", sep = "")
  
  old_path <- file.path(folder_with_csv_files, old_label)
  new_path <- file.path(folder_with_csv_files, new_label)
  
  # Print file paths for debugging
  cat("Old Path:", old_path, "\n")
  cat("New Path:", new_path, "\n")
  
  # Check if the file exists before renaming
  if (file.exists(old_path)) {
    # Rename the file
    file.rename(old_path, new_path)
    cat("Renamed:", old_label, "to", new_label, "\n")
  } else {
    cat("File not found:", old_label, "\n")
  }
}
