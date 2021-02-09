Sqlsrv and pdo driver for php 5.5.12

1-For Microsoft ODBC driver 11 for sql server installation
https://www.microsoft.com/en-in/download/details.aspx?id=36434
Download as according  system architecture  os 32 bit or 64.

2- For Microsoft Drivers for PHP for SQL Server

Please download from below link and make sure sqlsrv32 
https://download.microsoft.com/download/C/D/B/CDB0A3BB-600E-42ED-8D5E-E4630C905371/SQLSRV32.EXE
Or
https://www.microsoft.com/en-in/download/details.aspx?id=36434

3- Extract sqlsrv32 in a folder and copy these dll file into  c:/wamp/bin/php/php5.5.12/ext/
Php_pdo_sqlsrv_55_ts.dll
Php_sqlsrv_55_ts.dll

4- Edit php.ini file like this
extension=php_pdo_sqlsrv_55_ts.dll
extension=php_sqlsrv_55_ts.dll

5- Restart wamp services and check phpinfo for driver loaded or not.












