@echo off
ECHO Script	: Office to PDF Converter
ECHO Author 	: panca@sutresna.com
ECHO Desc	: Batch converter for office files to PDF
ECHO Version	: 0.1

for /r . %%f in (*.doc *.ppt *.xls) do (
	echo Converting "%%~nxf" to PDF
	_OfficeToPDF.exe "%%~nxf" "%%~nf.pdf"  
	echo Successfully convert "%%~nxf" to "%%~nf.pdf" >> _LOG.TXT
)
PAUSE