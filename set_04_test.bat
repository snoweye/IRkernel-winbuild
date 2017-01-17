@ECHO OFF

call set_var.bat
call set_path.bat
call ..\..\..\..\myenv\Scripts\activate.bat

rm -rf tests/ ./testthat.log
cp -R ./IRkernel/tests ./

sed -i "s/^\(if .*windows.*\)/# \\1/" ./tests/testthat.R
cd tests/
R --vanilla --slave < testthat.R > ../testthat.log

cd ../
sed -i "s/\\r\\n/\\n/g" ./testthat.log

pause
