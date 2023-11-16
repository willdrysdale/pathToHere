#' pathToHere
#'
#' Function that powers the pathToHere addin.
#' It takes a file path selected by the user and converts it to a \code{here::here()} path.
#' e.g. \code{"file/path"} becomes \code{here::here("file","path")}
#'
#' @author W. S. Drysdale
#'


pathToHere = function(){
  #print("pathToHere ran")

  # get doc context so we know where the selection is
  doc = rstudioapi::getActiveDocumentContext()

  # get contents of selection
  sel = rstudioapi::selectionGet()$value

  # tidy and reformat
  sel = stringr::str_remove_all(sel,'\\"') |>
    stringr::str_remove_all("'") |>
    stringr::str_split_1(.Platform$file.sep)

  sel = sel[nchar(sel) > 0]

  sel = paste0(sel, collapse = "','")

  sel = paste0("here::here('",sel,"')")

  rstudioapi::insertText(doc$selection[[1]]$range,text = sel)

}
