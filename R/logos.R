#' @export
hsl_logo <- function(){
  file_name <- "hsl.pdf"
  logo_file <- system.file("rmarkdown/templates/handout_lite/resources",
                           file_name,
                           package = "ifar.reports")
  file.copy(from = logo_file, to = ".")
  return(file_name)
}
