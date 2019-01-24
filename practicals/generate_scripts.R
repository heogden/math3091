setwd("practicals")

library(knitr)

output_files <- paste("prac")
for(i in 1:9){
  input_file <- paste("prac", i, ".Rmd", sep = "")
  output_file <- file.path("scripts", paste("prac", i, "_sols.R", sep = ""))
  purl(input_file, output = output_file, documentation = 0)
}