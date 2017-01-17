@ECHO OFF

call set_var.bat
call set_path.bat

rm -rf *.zip *.tar.gz
R CMD build --no-resave-data --no-manual --no-build-vignettes %pkg%
R CMD INSTALL --build --html %pkg%
R CMD INSTALL %pkg%_%var%.zip
mv %pkg%_%var%.tar.gz ../IRkernel-win/
mv %pkg%_%var%.zip ../IRkernel-win/

pause
