#' Convert Color Codes
#'
#' @name hex_ansi
#'
#' @description
#' [hex_to_256()]: Generate a 256-color 6x6x6 color cube.
#'
#' @param hex_color The hex color code to convert.
#'
#' @return
#' [hex_to_256()]: Returns 6x6x6 color cube.
#'
#' @examples
#' color_cube <- hex_to_ansi("#32CD32")
#'
#' @rdname hex_ansi
#'
#' @export
hex_to_256 <- function(hex_color){
    rgb <- as.vector(grDevices::col2rgb(hex_color))

    # Generate a 256-color 6x6x6 color cube: 16 + 36*r + 6*g + b
    # where r,g,b are 0-5
    values <- floor(rgb / 51)

    16 + (36 * values[1]) + (6 * values[2]) + values[3]
}


#' @description
#' [hex_to_ansi()]: Applies hex color and font weight to a text as ansi codes.
#'
#' @return
#' [hex_to_ansi()]: Returns formatted text.
#'
#' @param text The text which contains hex color codes to be convert into ansi
#' style formatting.
#' @param hex_color The hex color code to convert.
#' @param bold FALSE by default. If TRUE inserts ansi code for bold printing
#'
#' @examples
#' formatted_text <- hex_to_ansi("This is a text to test the coloring",
#'                               hex_color = "#32CD32", bold = TRUE)
#'
#' @rdname hex_ansi
#'
#' @export
hex_to_ansi <- function(text,
                        hex_color = NULL,
                        bold      = FALSE){
    prefix <- ""

    # If bold, text has to be surrounded with bold code
    if (bold){
        prefix <- paste0(prefix, "\033[1m")
    }

    # If color should be applied
    if (!is.null(hex_color)){
        color_256 <- hex_to_256(hex_color)

        # Use the 8-bit extended sequence: 38;5;Nm
        prefix <- paste0(prefix, sprintf("\033[38;5;%dm", color_256))
    }

    # Return fully styled text. Add old end as suffix
    paste0(prefix, text, "\033[0m")
}
