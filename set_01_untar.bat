rem @ECHO OFF

call set_var.bat
call set_path.bat

rm -rf %pkg% %pkg%.Rcheck ./tests/
cp -R ../IRkernel ./

cd IRkernel/
rm -rf .git* .Rbuildignore .travis.*
rm -rf cran-comments.md Makefile IRkernel.Rproj Dockerfile.dev
cd ../

pause
