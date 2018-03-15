
days_to_years <- function(days)
  ceiling(days/365.25)


pastef <- purrr::partial(...f = paste, sep = "/")


syncr_fixed_paths <- function(from_folder_path, to_folder_path){

  function(filename){
    syncr::syncr(src = paste(from_folder_path, filename, sep = ""),
                 dest = to_folder_path)
  }
}


get_from_envir <- function(envir_name) {

  function(variable_name){
    get(variable_name,
        envir = eval(parse(text = envir_name)))
  }
}

prop_table <- function(df) {
  prop.table(table(df))
}
