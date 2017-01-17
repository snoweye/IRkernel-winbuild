@ECHO OFF

call set_var.bat
call set_path.bat
call ..\..\..\..\myenv\Scripts\activate.bat

rm -rf %pkg%
tar zxvf ../IRkernel-win/%pkg%_%var%.tar.gz
R CMD check --as-cran IRkernel

pause
