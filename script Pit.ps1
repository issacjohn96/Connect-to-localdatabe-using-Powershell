$sqlConn= New-Object System.Data.SqlClient.SqlConnection
$sqlConn.ConnectionString="Server=ISSAC-TEST-1;   Integrated Security=true;   Initial Catalog=testdb1"   #Initial Catlog :is where u enter your databasename Server :your server name  
$id=0
$previous=0
while (1)	#infinite loop
{

$a =get-date -uformat "%S"          #so that i can enter the every second into the database
if($a -ne $previous)
{

$sqlCmd=$sqlConn.CreateCommand()
$sqlCmd.Connection=$sqlConn
$date =Get-date
$id = $id++
$query ="insert into data values('$date','$id','xyz')"

$sqlCmd.CommandText =$query
$sqlCmd.ExecuteNonQuery()
$previous=$a


}
}
