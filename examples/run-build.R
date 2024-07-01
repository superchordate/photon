# clone https://github.com/superchordate/electron-shiny into the parent folder before running this code.

require(easyr)
begin() # sets working directory to the location of this file, among other things.

# run the app to test it.
photon::run_build(
  type = 'run', 
  electron_shiny_path = '../../electron-quick-start-shiny',
  app_path = './app'
)

# build the executable (builds using the current R from R.home(), and the current OS).
# you can change the R used but not the OS, 
#  you'll need to run this on a different OS to create an executable for that OS.
photon::run_build(
  type = 'build', 
  electron_shiny_path = '../../electron-quick-start-shiny',
  app_path = './app'
)

# your app will now be saved at electron-quick-start-shiny/out/electron-quick-start-shiny-win32-x64/electron-quick-start-shiny.exe.