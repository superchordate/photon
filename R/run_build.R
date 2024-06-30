#' The main photon function
#' @param type Choose whether to run or build the app. I suggest run it before you build it.
#' @param electron_shiny_path Location of your electron project, obtained by cloning TBD.
#' @param app_path Location of a folder containing your app files. These will be copied into {electron_shiny_path}/app.
#' @param r_path Location of the R installation to use for the app. These will be copied into {electron_shiny_path}/R.
#' @export
run_build <- function(
  type = c('run', 'build'),
  electron_shiny_path= '../electron-shiny',
  app_path = 'app/',
  r_path = R.home()
){
  
  type = match.arg(type)

  # copy app and R files into the electron directory.
  copyfolder = function(from, to, force = FALSE){
    if(dir.exists(to)) if(!force){      
      return()
    } else {
      dir.create(to)
    }
    cat(paste0('copying [', from, '] to [', to, ']\n'))
    file.copy(paste0(from, '/.'), paste0(to, '/.'), recursive = TRUE, overwrite = TRUE)
  }
  copyfolder(app_path, paste0(electron_shiny_path, '/app'))
  copyfolder(r_path, paste0(electron_shiny_path, '/R'))
  
  # run electron.
  if(.Platform$OS.type == "windows"){

    cd_run = function(cmd) shell(sprintf("cd %s && %s", electron_shiny_path, cmd), wait = TRUE, mustWork = TRUE)

    cd_run('npm install')
    cd_run('npm install --save-dev electron') # https://www.electronjs.org/docs/latest/tutorial/quick-start

    if(type == 'run'){
      cd_run('npm start') # https://www.electronjs.org/docs/latest/tutorial/quick-start
    } else {
      # https://www.electronjs.org/docs/latest/tutorial/tutorial-packaging
      cd_run('npm install --save-dev @electron-forge/cli')
      cd_run('npx electron-forge import')
      cd_run('npm run make')
    }
    
  } else {    
    stop(paste0(.Platform$OS.type, ' is not supported yet. Please consider addressing this via a pull request.'))
  }

}

run_build(type = 'run')
