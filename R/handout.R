#' @export

handout <- function(keep_tex = T, toc = T, toc_depth = 4, includes = NULL) {
  template <- find_resource("handout", "template.ifar.tex")
  #csl <- find_resource("handout", "american-medical-association.csl")

  # call the base pdf_document format with the appropriate options
  format <- rmarkdown::pdf_document(
    latex_engine = "xelatex",
    template = template,
    number_sections = TRUE,
    keep_tex = keep_tex,
    highlight = "haddock",
    toc = toc,
    toc_depth =toc_depth,
    fig_caption = TRUE,
    includes = includes,
    pandoc_args = NULL
  )

  # Create knitr options (ensure opts and hooks are non-null)
  #knitr_options <- rmarkdown::knitr_options_pdf(fig_width, fig_height, fig_crop)
  #if (is.null(knitr_options$opts_knit))
   # knitr_options$opts_knit <- list()

  # set options
  #knitr_options$opts_chunk$cache <- F
  #knitr_options$opts_chunk$size <- 'Large'
  #knitr_options$opts_chunk$fig.pos <- 'H'
  #knitr_options$opts_chunk$dev <- 'cairo_pdf'
  #knitr_options$opts_chunk$dev.args <- list(family="libertine")
  #knitr_options$opts_chunk$comment <- NA
  #knitr_options$opts_chunk$warning <- F
  #knitr_options$opts_chunk$message <- F
  #knitr_options$opts_chunk$tidy <- TRUE

  # override the knitr settings of the base format and return the format
  #format$knitr <- knitr_options
  format

}
