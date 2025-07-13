#' Apply Custom Theme to Shiny App
#'
#' @description Applies custom CSS and JavaScript to enhance Shiny app appearance.
#'
#' @param primary_color Primary color for the theme (default: "#3498db")
#' @param secondary_color Secondary color for the theme (default: "#2ecc71")
#'
#' @return HTML tags to include in Shiny UI
#' @export
#'
#' @examples
#' \dontrun{
#' ui <- fluidPage(
#'   use_custom_theme(),
#'   titlePanel("My Themed App"),
#'   # rest of UI
#' )
#' }
use_custom_theme <- function(primary_color = "#3498db", secondary_color = "#2ecc71") {
  htmltools::tagList(
    htmltools::includeCSS(system.file("www/css/custom-theme.css", package = "myShinyTheme")),
    htmltools::includeScript(system.file("www/js/custom-theme.js", package = "myShinyTheme")),
    htmltools::tags$style(
      paste0("
        :root {
          --primary-color: ", primary_color, ";
          --secondary-color: ", secondary_color, ";
        }
      ")
    )
  )
}
