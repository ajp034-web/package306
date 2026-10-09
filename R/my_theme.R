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
    ggplot2::theme_minimal() +
      ggplot2::theme(

        # Plot background
        plot.background = ggplot2::element_rect(
          fill = "#f9f9f9",
          color = NA
        ),

        # Panel background and grid
        panel.background = ggplot2::element_rect(
          fill = "#FFF0F5",
          color = NA
        ),
        panel.grid.major = ggplot2::element_line(
          color = "#F08080",
          linewidth = 0.4
        ),
        panel.grid.minor = ggplot2::element_blank(),

        # Axis lines and ticks
        axis.line = ggplot2::element_line(
          color = "#670030",
          linewidth = 0.5
        ),
        axis.ticks = ggplot2::element_line(
          color = "#670030"
        ),

        # Text elements
        plot.title = ggplot2::element_text(
          face = "bold",
          hjust = 0.5,
          color = "#670030",
          family = "sans"
        ),
        plot.subtitle = ggplot2::element_text(
          hjust = 0.5,
          color = "#670030",
          family = "sans"
        ),
        axis.title = ggplot2::element_text(
          color = "#670030",
          face = "bold",
          family = "sans"
        ),
        axis.text = ggplot2::element_text(
          color = "#670030",
          family = "sans"
        ),

        # Legend
        legend.background = ggplot2::element_rect(
          fill = "#f9f9f9",
          color = NA
        ),
        legend.key = ggplot2::element_rect(
          fill = "#f9f9f9",
          color = NA
        ),
        legend.position = "bottom"
      ),

    # Custom fill palette
    ggplot2::scale_fill_manual(
      values = c(
        "#670030",
        "#A23B72",
        "#D76D9A",
        "#F08080",
        "#FFC2D1",
        "pink",
        "pink4",
        "salmon",
        "lightpink3",
        "magenta4"
      )
    ),

    # Custom color palette
    ggplot2::scale_color_manual(
      values = c(
        "#670030",
        "#A23B72",
        "#D76D9A",
        "#F08080",
        "#FFC2D1",
        "pink",
        "pink4",
        "salmon",
        "lightpink3",
        "magenta4"
      )
    )
  )
}



