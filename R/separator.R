#' Separates a clip into stems (vocals, bass, drums, others)
#'
#' @param audio_file The audio file.
#' @param n_stem A number [2, 4 and 5] to indicates a flavour of separation, where:
#' \itemize{
#'   \item{2: Vocals (singing voice) / accompaniment separation}
#'   \item{4: Vocals / drums / bass / other separation}
#'   \item{5: Vocals / drums / bass / piano / other separation}
#' }
#' @return Creates a directory with files in .wav format
#' @examples
#' \dontrun{
#' setwd("path_to_music")
#' spleeteR::separator(audio_file = 'music.mp3', n_stem = 5)
#' }
separator <- function(audio_file = NULL,
                      n_stem = 2) {

  if (!requireNamespace("reticulate", quietly = TRUE)) {
    stop("Package \"reticulate\" needed for this function to work. Please install it.",
         call. = FALSE)
  }

  if(is.null(audio_file)){
    stop("Insert audio_file!")
    }

  if(!n_stem %in% c(2, 4, 5)){
    stop("n_stem must be 2, 4 or 5!")
  }

  spleeter <- reticulate::import("spleeter.separator")

  stem <- paste0("spleeter:", n_stem, "stems-16kHz")

  separator <- spleeter$Separator(stem)

  unlink("output")
  dir.create("output", showWarnings = FALSE)

  separator$separate_to_file(audio_descriptor = audio_file,
                             destination = "output"
                             # bitrate=paste0(320, "kB/s")# [128, 320]
  )

}










