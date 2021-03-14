#' Add together two numbers
#'
#' @param audio_path A number.
#' @param n_steam A number.
#' @return The sum of \code{x} and \code{y}.
#' @examples
#' reticulate::py_install(c("spleeter"), forge = TRUE)
#' separator(audio_path = 'musica.mp3', n_steam = 5)

separator <- function(audio_path = NULL,
                      n_steam = 2) {

  if (!requireNamespace("reticulate", quietly = TRUE)) {
    stop("Package \"reticulate\" needed for this function to work. Please install it.",
         call. = FALSE)
  }

  if(is.null(audio_path)){
    stop("Insert audio_path!")
    }

  if(!n_steam %in% c(2, 4, 5)){
    stop("n_steam must be 2, 4 or 5!")
  }

  spleeter <- reticulate::import("spleeter.separator")

  steam <- paste0("spleeter:", n_steam, "stems-16kHz")

  separator <- spleeter$Separator(steam)

  unlink("output")
  dir.create("output", showWarnings = FALSE)

  separator$separate_to_file(audio_descriptor = audio_path,
                             destination = "output"
                             # bitrate=paste0(320, "kB/s")# [128, 320]
  )

}










