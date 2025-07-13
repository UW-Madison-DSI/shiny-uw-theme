#' Custom Themed Button
#'
#' @param inputId Input ID
#' @param label Button label
#' @param style Button style ("primary", "secondary", "success", etc.)
#'
#' @return Shiny action button with custom styling
#' @export
themed_button <- function(inputId, label, style = "primary") {
  shiny::actionButton(
    inputId = inputId,
    label = label,
    class = paste0("btn-", style, " themed-button")
  )
}

#' Custom Themed Card
#'
#' @param title Card title
#' @param content Card content
#' @param width Card width (1-12)
#'
#' @return HTML div with card styling
#' @export
themed_card <- function(title, content, width = 6) {
  shiny::div(
    class = paste0("col-sm-", width),
    shiny::div(
      class = "themed-card",
      shiny::h4(title, class = "card-title"),
      shiny::div(content, class = "card-content")
    )
  )
}
