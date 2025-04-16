# Employee Data Viewer
# Unzips and displays employee data

# Unzip the file
unzip("Employee Profiles.zip", exdir = "temp_employee_data")

# Find the CSV file
csv_file <- list.files("temp_employee_data", pattern = "\.csv$", full.names = TRUE)[1]

# Read and display data
employee_data <- read.csv(csv_file)
print("Employee Profile:")
print(employee_data)

# Clean up
unlink("temp_employee_data", recursive = TRUE)
