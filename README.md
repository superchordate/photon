_This is a modified version of https://github.com/COVAIL/photon. I am attempting to resolve some of the issues identified there. Thanks to the team at COVAIL for the solid start on this project!_

# photon

Photon builds a standalone Shiny app by leveraging the Electron framework. 

## Instructions

1. Install [Node.js](https://nodejs.org/en/download/)
2. Create a new folder called `photon-test`. You'll need two repos for this to work. 
3. Clone this repo into the folder with Git bash here > `git clone https://github.com/superchordate/photon.git`
3. Clone `electron-quick-start-shiny` into the folder with Git bash here > `git clone https://github.com/superchordate/electron-quick-start-shiny`
3. Install this package with `remotes::install_github("superchordate/photon")`.
4. Run the example at `photon/examples/run-build.R`

## Notes

* R Compilation: `run_build` has an argument `r_path = R.home()` you can use to point the build process to a specific version of R. The build will copy the R installation to `electron-shiny/R` for packaging into the app. This means any packages you have installed should work in your electron app, and the built app will only work on your current OS. If you need a different OS version, you'll need to run the process and build on a machine running that OS.

* There is a demo app saved in this repo which you can use to run an example. Clone the repo with `git clone https://github.com/superchordate/photon.git` and point `app_path` to the `app/` folder.


## About Me

I'm an independent contractor helping companies build custom cloud apps and leverage data science, visual analytics, and AI. I offer low introductory rates, free consultation and estimates, and no minimums, so contact me today and let's chat about how I can help!

https://www.brycechamberlainllc.com/
