-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` > 1000

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @data Blob -- Binary
SET     @data = NULL

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`BinaryValue`,
	`BoolValue`
)
VALUES
(
	1001,
	@data,
	1
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` > 1000

