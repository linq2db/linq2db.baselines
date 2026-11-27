-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	DATABASE()
FROM
	`LinqDataTypes` `t1`
LIMIT 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @ID Int32
SET     @ID = 5

DELETE  
FROM
	`testdata`.`QualifiedNameTable`
WHERE
	`testdata`.`QualifiedNameTable`.`ID` = @ID

