setwd(dirname(rstudioapi::getSourceEditorContext()$path))
devtools::document()
devtools::document()
devtools::install(upgrade = 'never')
