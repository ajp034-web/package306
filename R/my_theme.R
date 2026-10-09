#' Custom ggplot2 theme
#'
#' A custom theme for ggplot2 plots.
#'
#' @return A customized ggplot2 theme with matching fill and color scales.
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(mtcars, aes(x = factor(cyl), y = mpg, fill = factor(cyl))) +
#'   geom_col() +
#'   my_theme()
#'
#' @export
my_theme <- function() {
  list(

    # Base theme
    theme_minimal() %+replace%
      theme(

        # Plot background
        plot.background = element_rect(
          fill = "#f9f9f9",
          color = NA
        ),

        # Panel background and grid
        panel.background = element_rect(
          fill = "#FFF0F5",
          color = NA
        ),
        panel.grid.major = element_line(
          color = "#F08080",
          linewidth = 0.4
        ),
        panel.grid.minor = element_blank(),

        # Axis lines and ticks
        axis.line = element_line(
          color = "#670030",
          linewidth = 0.5
        ),
        axis.ticks = element_line(
          color = "#670030"
        ),

        # Text elements
        plot.title = element_text(
          face = "bold",
          hjust = 0.5,
          color = "#670030",
          family = "sans"
        ),
        plot.subtitle = element_text(
          hjust = 0.5,
          color = "#670030",
          family = "sans"
        ),
        axis.title = element_text(
          color = "#670030",
          face = "bold",
          family = "sans"
        ),
        axis.text = element_text(
          color = "#670030",
          family = "sans"
        ),

        # Legend
        legend.background = element_rect(
          fill = "#f9f9f9",
          color = NA
        ),
        legend.key = element_rect(
          fill = "#f9f9f9",
          color = NA
        ),
        legend.position = "bottom"
      ),

    # Custom fill palette
    scale_fill_manual(
      values = c(
        "#670030",
        "#A23B72",
        "#D76D9A",
        "#F08080",
        "#FFC2D1"
      )
    ),

    # Custom color palette
    scale_color_manual(
      values = c(
        "#670030",
        "#A23B72",
        "#D76D9A",
        "#F08080",
        "#FFC2D1"
      )
    )
  )
}



