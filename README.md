_This is my modified version of https://github.com/COVAIL/photon. I am attempting to resolve some of the issues identified there. Thanks to the team at COVAIL for the solid start on this project!_

_Once I got into this I realized it might be better to use https://github.com/COVAIL/electron-quick-start instead. This project seems to create a UI to make the process easier, but given the state of it it might be best to just use that other repo. It's a bit more complicated but might be doable if you are familiar with Node.js._

> Photon doesn't work with any package that has to be compiled. This requires management of the temporary directory for libPath to be used for compiling packages, which must changed in the bash script that launches R.

# Photon Package

Photon builds standalone Shiny app by leveraging the Electron framework in Mac OS and Windows operating systems. This package clones the [Columbus Collaboratory electron-quick-start repository](https://github.com/ColumbusCollaboratory/electron-quick-start) which is forked to the electron-quick-start git repository plus Mac and Windows R portables. Photon will be extended to Linux in the near future. This work is still under development.

# Instructions

1. Install [Node.js](https://nodejs.org/en/download/)
2. Create an app/ folder in the project and place your app's files there, or use the app.R file that is already there.
3. Install this package with `remotes::install_github("superchordate/photon")`.
4. Start the mini UI by running `photon::launch_ui()` in RStudio, and finish building the app through it.

# Installing Packages
The Mac and Windows R Portables currently come many pre-loaded packages that were selected by popularity. If additional packages (currently only CRAN and Bioconductor packages work; GitHub coming soon) are required, users can enter in a comma-separated string containing the package names of interest in the miniUI. These packages will install the packages to the relative version of R portable that will be subsequently packaged in to an Electron standalone application.    

If no packages are needed to install, type `NULL` as the entry for those specific repositories.

# Issues
Please submit a pull request for issues related to this package.  

# References
2019 slides and presentation 
https://www.user2019.fr/static/pres/lt257916.pdf 
https://youtu.be/Dn9VRUBFvyc?t=1167

Older 2018 version
https://github.com/ksasso/useR_electron_meet_shiny/blob/master/electron_slides.Rmd
https://www.youtube.com/watch?v=ARrbbviGvjc
https://www.youtube.com/embed/O56WR-yQFC0
https://www.youtube.com/embed/hZXlgdNOqwA
https://www.youtube.com/embed/HDokkYmJKCk

# Contact
For photon questions contact pgordon@cbuscollaboratory.com   
For questions about the implementation of Electron, Chromium or node.js contact pgordon@cbuscollaboratory.com   
For questions about the R portable contact snikitin@cbuscollaboratory.com  







