#' @importFrom rmarkdown pdf_document
#' @export
handout_lite <- function(toc = TRUE, number_sections = TRUE,
                         highlight = "haddock", latex_engine = "xelatex",
                         ...) {
  template <- system.file("rmarkdown/templates/handout_lite/resources/template.tex",
                          package = "ifar.reports")

  format <- rmarkdown::pdf_document(
    latex_engine = latex_engine,
    template = template,
    number_sections = number_sections,
    highlight = highlight,
    toc = toc,
    ...
  )

  return(format)
}
