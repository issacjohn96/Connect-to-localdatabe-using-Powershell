# database Intraction

$SQLServer = "ISSAC-TEST-1" 
$SQLDBName = "testdb1"
$SqlConnection = New-Object System.Data.SqlClient.SqlConnection
$SqlConnection.ConnectionString = "Server = $SQLServer; Database = $SQLDBName;User ID= administrator; Password= NimesaVital@123"; 
$SqlCmd = New-Object System.Data.SqlClient.SqlCommand
$SqlGet-date=get-date
$SqlCmd.CommandText = "insert into emp value('k',89)"
$SqlCmd.Connection = $SqlConnection 
$SqlAdapter = New-Object System.Data.SqlClient.SqlDataAdapter
$SqlAdapter.SelectCommand = $SqlCmd 
$DataSet = New-Object System.Data.DataSet
$SqlAdapter.Fill($DataSet) 
 
